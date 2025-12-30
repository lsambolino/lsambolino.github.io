#!/bin/bash
# Quick Start Script for Portfolio Website

echo "==================================================="
echo "Luigi Sambolino - Portfolio Website Quick Start"
echo "==================================================="
echo ""

echo "📁 Current directory: $(pwd)"
echo ""

echo "🔍 Step 1: Checking if we're in the docs folder..."
if [ ! -f "_config.yml" ]; then
    echo "❌ Not in docs folder. Changing directory..."
    cd docs
    if [ $? -ne 0 ]; then
        echo "❌ Error: Cannot find docs folder!"
        echo "   Please run this script from the repository root."
        exit 1
    fi
fi
echo "✅ In docs folder"
echo ""

echo "📦 Step 2: Installing dependencies..."
bundle install
if [ $? -ne 0 ]; then
    echo "❌ Error: Bundle install failed!"
    echo "   Make sure Ruby and Bundler are installed."
    exit 1
fi
echo "✅ Dependencies installed"
echo ""

echo "🖼️  Step 3: Checking for profile picture..."
if [ -f "assets/images/profile.jpg" ]; then
    SIZE=$(du -h assets/images/profile.jpg | cut -f1)
    echo "✅ Profile picture found (size: $SIZE)"
else
    echo "⚠️  WARNING: Profile picture not found!"
    echo "   Please save your photo to: docs/assets/images/profile.jpg"
fi
echo ""

echo "🚀 Step 4: Starting Jekyll server..."
echo ""
echo "==================================================="
echo "The site will be available at:"
echo "👉 http://localhost:4000"
echo ""
echo "Press Ctrl+C to stop the server"
echo "==================================================="
echo ""

bundle exec jekyll serve --livereload

echo ""
echo "✅ Server stopped."
