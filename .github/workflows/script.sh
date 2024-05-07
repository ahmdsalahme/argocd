#!/bin/bash

branches="main
repo12
dev-afdsf
INFL-9297-
asdfasdf"

# Process all existing branches
while IFS= read -r branch; do
  if [[ "$branch" =~ ^INFL\-[0-9]{4}\-.+$ ]]; then
    echo $branch
  fi
done <<< "$branches"