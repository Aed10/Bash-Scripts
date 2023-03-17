#!/bin/bash

#The set -euo pipefail line is a combination of four options that make bash scripts safer and more robust
set -euo pipefail

path_to_commit=$(realpath "$1")
directory_name=$(basename "$path_to_commit")


optional_message=${2:-""} # Add an optional second argument for additional commit message

commit_message="Update $directory_name - $optional_message"

# Check if the path exists
if [ ! -e "$path_to_commit" ]; then
  echo "Path $path_to_commit does not exist"
  exit 1
fi

# Check if the path is already committed
if git log --pretty=format: --full-history --name-only | grep "$path_to_commit" > /dev/null; then
  # If the path is already committed, update the file and force push
  git fetch
  git merge --ff-only "origin/$(git rev-parse --abbrev-ref HEAD)"
  git checkout HEAD -- "$path_to_commit"
  git add "$path_to_commit"
  git commit -m "$commit_message"
  git push --force-with-lease



else
  # If the path is not already committed, add the path to the staging area
  git add -A "$path_to_commit"
  git commit -m "$commit_message"
  git pull --rebase
  git push
fi

# Exit with success status code
exit 0
