#!/bin/bash

# branches="main
# repo12
# dev-afdsf
# INFL9297-asdf
# asdfasdf"

# # Process all existing branches
# while IFS= read -r branch; do
#   branch_lower=$( echo $branch | awk '{print tolower($0)}' )
#   if [[  "$branch_lower" =~ ^infl(\-| )[0-9]{4}.+$ ]]; then
#     echo $branch
#   fi
# done <<< "$branches"

branch_name="infl-12-sadf"
pr_title="infl-1234-sadf"

if [[ ! "$branch_name" =~ ^infl\-[0-9]{4}.+$ ]] ||
   [[ ! "$pr_title"    =~ ^infl(\-| )[0-9]{4}.+$ ]]; then
  echo [COMPLIANCE-ERROR] Please ensure that both your Branch Name and PR Title start with the appropriate JIRA ticket prefix.
  exit 1
fi