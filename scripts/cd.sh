#!/bin/bash
# cdgitroot.sh - Go to Git repo root and load .env

#⚠️ doesn't work


# Get the Git root directory
git_root=$(git rev-parse --show-toplevel 2>/dev/null)

if [ -z "$git_root" ]; then
    echo "Not inside a Git repository."
    return 1  # use return instead of exit if sourced
fi

# Change directory to the Git root
cd "$git_root" || return 1

# Load .env if it exists
if [ -f ".env" ]; then
    export $(grep -v '^#' .env | xargs)
fi
