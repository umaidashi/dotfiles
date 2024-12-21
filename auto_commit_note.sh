#!/bin/bash

repo note
git pull

status=$(git status -s)
if [ ! -n "$result" ]; then
  return
fi

DATE=$(date '+%Y-%m-%d %H:%M:%S')

git add .
git commit -m "🤖: auto commit at $DATE"
git push
