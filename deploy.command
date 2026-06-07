#!/bin/bash

cd /Users/pin/projects/dev/active/Pin-Web

echo "What did you change? (Press Enter when done)"
read msg

if [ -z "$msg" ]; then
    echo "Commit message cannot be empty. Aborting."
    read
    exit 1
fi

echo "Tag this version? (e.g. 1.0) — Press Enter to skip"
read tag

git add .
git commit -m "$msg"

if [ -n "$tag" ]; then
    git tag "v$tag"
    git push origin main --tags
    echo "Deployed and tagged as v$tag!"
else
    git push
    echo "Deployed!"
fi

echo ""
echo "Press Enter to close..."
read
