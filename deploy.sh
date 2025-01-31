#!/bin/bash

echo "🚀 Pulling latest changes from GitHub..."
git pull origin main

echo "🔍 Checking for uncommitted changes..."
if ! git diff --quiet; then
    git add .
    git commit -m "Automated update: Fixes & improvements"
    git push origin main
fi

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🔄 Restarting Streamlit App..."
pkill -f streamlit
streamlit run google_trends_scraper.py --server.port 8501
