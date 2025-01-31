#!/bin/bash
echo "🚀 Pulling latest changes from GitHub..."
git pull origin main --rebase

echo "🔍 Checking for uncommitted changes..."
git add .
git commit -m "Automated update: Fixes & improvements" || echo "No changes to commit"

echo "📤 Pushing updates to GitHub..."
git push origin main

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🔄 Restarting Streamlit App..."
streamlit run google_trends_scraper.py
#\!/bin/bash
