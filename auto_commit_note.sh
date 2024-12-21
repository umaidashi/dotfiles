#!/bin/bash

cd ~/documents/git/note
git pull

status=$(git status -s)
if [ ! -n "$result" ]; then
  return
fi

DATE=$(date '+%Y-%m-%d %H:%M:%S')
hostname=$(hostname)

git add .
git commit -m "🤖[$hostname] < commit at $DATE"
git push

if [ $? -eq 0 ]; then
  osascript -e 'display notification "commit succeed!!" with title "Note Auto Commiter"'
else
  osascript -e 'display notification "commit failed!!" with title "Note Auto Commiter"'
fi
