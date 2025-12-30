# 🚀 Quick Reference Guide

## Immediate Next Steps

### 1. Save Your Professional Photo (REQUIRED)

The site references your photo but you need to save it:

```bash
# Save your professional photo to this exact location:
cp /path/to/your/photo.jpg docs/assets/images/profile.jpg

# Or using the VS Code file explorer:
# Navigate to: docs/assets/images/
# Save the attached photo as: profile.jpg
```

**Photo Requirements:**
- Minimum size: 500x500px
- Format: JPG or PNG
- File size: < 200KB (optimized for web)
- Professional business photo (like the one you shared)

---

### 2. Test the Site Locally

```bash
# Easy way - use the provided script:
./start-server.sh

# Or manually:
cd docs
bundle install
bundle exec jekyll serve

# Then open in browser:
# http://localhost:4000
```

---

### 3. Review & Customize Content

#### Update LinkedIn URL (if different):
Edit `docs/_config.yml`, line with:
```yaml
linkedin_username: luigi-sambolino
```

#### Customize Projects:
Edit `docs/projects.md` to:
- Add real GitHub links
- Adjust project descriptions
- Add more projects from your experience

#### Add More Blog Posts:
Create new files in `docs/_posts/`:
```bash
# Format: YYYY-MM-DD-title.markdown
docs/_posts/2025-01-05-your-new-post-title.markdown
```

---

### 4. Commit Changes

```bash
# Check what changed:
git status

# Add all changes:
git add docs/

# Commit with descriptive message:
git commit -m "feat: Complete professional portfolio redesign

- Add hero section with photo and CTAs
- Implement comprehensive SEO
- Create Projects, Skills, Contact, and Blog pages
- Redesign Certifications with visual cards
- Add custom CSS branding
- Fix Utterances comments
- Configure professional navigation
- Mobile-responsive design

Backup tag: v1.0-before-redesign"

# Push to GitHub:
git push origin main
```

**Note:** Your git repo has some corruption. If the above fails:
```bash
git reset --mixed HEAD
# Then try again, or clone fresh
```

---

### 5. Deploy to GitHub Pages

Once pushed, GitHub Pages will automatically rebuild your site in 1-2 minutes.

Visit: **https://lsambolino.github.io**

---

## 🎯 What Was Changed

### New Pages Created:
- ✅ **Projects** - 5 case studies showcasing your work
- ✅ **Skills** - Visual taxonomy of technical expertise
- ✅ **Contact** - Professional contact page with CTAs
- ✅ **Blog** - Archive of blog posts

### Pages Enhanced:
- ✅ **Home** - Hero section with photo, title, elevator pitch
- ✅ **About** - Expanded with career journey and photo
- ✅ **Certifications** - Visual cards instead of table

### Technical Improvements:
- ✅ SEO plugins (jekyll-seo-tag, jekyll-sitemap)
- ✅ Open Graph & Twitter Cards
- ✅ Custom CSS with modern design
- ✅ Mobile responsive
- ✅ Fixed comment system
- ✅ Professional navigation

---

## 📁 File Structure

```
docs/
├── _config.yml          ← Site configuration (SEO, nav, author)
├── _layouts/
│   ├── default.html     ← Main layout (SEO tags, custom CSS)
│   ├── page.html        ← Page template
│   └── post.html        ← Blog post template (fixed comments)
├── _posts/
│   └── 2024-09-10-tls-expiration...markdown  ← Your blog post
├── assets/
│   ├── css/
│   │   └── custom.css   ← Custom styling
│   └── images/
│       └── profile.jpg  ← YOUR PHOTO GOES HERE
├── index.md             ← Homepage with hero
├── about.md             ← About page
├── projects.md          ← Projects showcase
├── skills.md            ← Skills taxonomy
├── certifications.md    ← Certifications (visual cards)
├── blog.md              ← Blog archive
├── contact.md           ← Contact page
├── academic.md          ← (exists but not in nav)
└── Gemfile              ← Dependencies
```

---

## 🎨 Customization Guide

### Change Colors:
Edit `docs/assets/css/custom.css`, lines 3-8:
```css
:root {
  --primary-color: #667eea;      /* Main purple */
  --secondary-color: #764ba2;    /* Deep purple */
  --accent-color: #4ecdc4;       /* Teal accent */
  /* ... */
}
```

### Change Site Title:
Edit `docs/_config.yml`, line ~16:
```yaml
title: Your Name Here
```

### Update Description:
Edit `docs/_config.yml`, lines ~18-20:
```yaml
description: >-
  Your custom description here
```

### Modify Navigation Order:
Edit `docs/_config.yml`, lines ~35-42:
```yaml
header_pages:
  - index.md
  - about.md
  - projects.md
  # Add or remove pages here
```

---

## 🐛 Troubleshooting

### Site not building?
```bash
# Check Jekyll errors:
cd docs
bundle exec jekyll build --verbose

# Common issues:
# - Missing profile.jpg
# - YAML syntax errors in frontmatter
# - Plugin not installed (run bundle install)
```

### Images not showing?
```bash
# Check image paths (should start with /):
/assets/images/profile.jpg   ✅ Correct
assets/images/profile.jpg    ❌ Wrong
```

### Comments not working?
- Utterances requires public repository
- Repo must have utterances app installed
- Correct format: `owner/repo` not `https://...`

### Navigation not updating?
- Check `_config.yml` for `header_pages:`
- Restart Jekyll server after config changes
- File names must match exactly

---

## 📚 Resources

- **Jekyll Documentation:** https://jekyllrb.com/docs/
- **Minima Theme:** https://github.com/jekyll/minima
- **SEO Plugin:** https://github.com/jekyll/jekyll-seo-tag
- **Markdown Guide:** https://www.markdownguide.org/
- **Liquid Template:** https://shopify.github.io/liquid/

---

## 🔄 Rollback

If anything goes wrong:

```bash
# See the backup tag:
git tag -l

# Rollback to before redesign:
git reset --hard v1.0-before-redesign

# Or restore individual files:
git checkout v1.0-before-redesign -- docs/index.md
```

---

## ✅ Checklist

Before going live:

- [ ] Save professional photo to `docs/assets/images/profile.jpg`
- [ ] Test site locally (`./start-server.sh`)
- [ ] Update LinkedIn username in `_config.yml` (if needed)
- [ ] Review all page content for accuracy
- [ ] Customize projects with real details
- [ ] Check all links work
- [ ] Test on mobile device
- [ ] Verify comments work (Utterances)
- [ ] Commit and push changes
- [ ] Verify GitHub Pages deployment
- [ ] Test live site at lsambolino.github.io
- [ ] Share with colleagues for feedback

---

**Questions?** Check `REDESIGN_SUMMARY.md` for complete details!
