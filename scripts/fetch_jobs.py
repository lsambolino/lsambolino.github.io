#!/usr/bin/env python3
"""Refresh the list of open Accenture roles in Italy for the /referrals/ page.

Reads the public job-search endpoint behind accenture.com/it-it/careers/jobsearch
(no authentication) and writes a trimmed, deterministic JSON file that Jekyll
renders. Only public fields are kept: in particular the Workday apply link
(`internalReferURL`) is deliberately NOT stored, because a referral has to be
submitted before the candidate applies.
"""

import datetime
import json
import pathlib
import sys
import urllib.request
import uuid

ENDPOINT = "https://www.accenture.com/api/accenture/elastic/findjobs"
OUT = pathlib.Path(__file__).resolve().parent.parent / "docs" / "_data" / "accenture_jobs.json"
PAGE = 50
LOCALE = "it-it"

BASE_FIELDS = {
    "jobKeyword": "",
    "jobCountry": "Italia",
    "jobLanguage": "it",
    "countrySite": LOCALE,
    "sortBy": "1",
    "searchType": "vectorSearch",
    "enableQueryBoost": "true",
    "minScore": "0.6",
    "useCleanEmbedding": "true",
    "score": "true",
    "totalHits": "true",
    "debugQuery": "false",
    "jobFilters": "[]",
}


def post(fields):
    boundary = uuid.uuid4().hex
    body = b""
    for key, value in fields.items():
        body += (
            f"--{boundary}\r\n"
            f'Content-Disposition: form-data; name="{key}"\r\n\r\n'
            f"{value}\r\n"
        ).encode()
    body += f"--{boundary}--\r\n".encode()
    req = urllib.request.Request(
        ENDPOINT,
        data=body,
        headers={
            "Content-Type": f"multipart/form-data; boundary={boundary}",
            "CSRF-Token": "",
            "Accept": "application/json",
            "User-Agent": "lsambolino.github.io job-feed (personal referral page)",
        },
    )
    with urllib.request.urlopen(req, timeout=60) as resp:
        return json.loads(resp.read().decode("utf-8", "replace"))


def trim(record):
    url = (record.get("jobDetailUrl") or "").replace("{0}", LOCALE)
    return {
        "id": record.get("requisitionId"),
        "title": record.get("title"),
        "locations": record.get("location") or [],
        "career_level": record.get("careerLevel"),
        "seniority": record.get("jobTypeDescription"),
        "years": record.get("yearsOfExperience"),
        "education": record.get("education") or [],
        "remote": record.get("remoteType"),
        "area": record.get("areaOfInterest") or [],
        "business_area": record.get("businessArea"),
        "url": url,
    }


def main():
    first = post({**BASE_FIELDS, "startIndex": "0", "maxResultSize": str(PAGE)})
    total = int(first.get("totalHits", {}).get("total", 0))
    rows = list(first.get("data") or [])
    start = PAGE
    while len(rows) < total and start < total:
        page = post({**BASE_FIELDS, "startIndex": str(start), "maxResultSize": str(PAGE)})
        batch = page.get("data") or []
        if not batch:
            break
        rows.extend(batch)
        start += PAGE

    jobs = [trim(r) for r in rows if r.get("requisitionId")]
    # de-duplicate and order deterministically, so an unchanged catalogue
    # produces an identical file and no empty daily commit
    unique = {j["id"]: j for j in jobs}
    jobs = sorted(unique.values(), key=lambda j: (j["title"] or "", j["id"]))

    if not jobs:
        print("refusing to write an empty job list", file=sys.stderr)
        return 1

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(
        json.dumps(
            {
                "fetched_at": datetime.datetime.now(datetime.timezone.utc)
                .replace(microsecond=0)
                .isoformat(),
                "total": len(jobs),
                "jobs": jobs,
            },
            ensure_ascii=False,
            indent=1,
        )
        + "\n",
        encoding="utf-8",
    )
    print(f"wrote {len(jobs)} roles to {OUT} (endpoint reported {total})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
