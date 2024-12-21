#!/bin/bash

cd ~/documents/git/note
git pull >/dev/null 2>&1

result=$(git status -s)
if [ ! -n "$result" ]; then
  exit 0
fi

DATE=$(date '+%Y-%m-%d %H:%M:%S')
hostname=$(hostname)

git add . >/dev/null 2>&1
git commit -m "🤖[$hostname] < commit at $DATE" >/dev/null 2>&1
git push >/dev/null 2>&1

if [ $? -eq 0 ]; then
  osascript -e 'display notification "commit succeed!!" with title "Note Auto Commiter"'
else
  osascript -e 'display notification "commit failed!!" with title "Note Auto Commiter"'
fi
