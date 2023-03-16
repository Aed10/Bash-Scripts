#!/bin/bash
# Set variables
path_to_commit="$1"
commit_message="$2"

# Check if the path exists
if [ ! -e "$path_to_commit" ]; then
  echo "Path $path_to_commit does not exist"
  exit 1
fi

# Check if the path is already committed
if git log --pretty=format: --full-history --name-only | grep "$path_to_commit" > /dev/null; then
  # If the path is already committed, use git commit --amend to update the commit
  git add "$path_to_commit"
  git commit --amend --no-edit
  git push --force
else
  # If the path is not already committed, add the path to the staging area
  if [[ -d "$path_to_commit" ]]; then
    git add "$path_to_commit"/*
  else
    git add "$path_to_commit"
  fi
  git commit -m "$commit_message"
fi

# Push the changes to the remote repository
git push origin main  #you can use your default branch here

# Exit with success status code
exit 0

