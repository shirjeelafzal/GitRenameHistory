#!/bin/bash

# Prompt for correct name and email
read -p "Enter correct name: " CORRECT_NAME
read -p "Enter correct email: " CORRECT_EMAIL

# Prompt for old emails
echo "Enter old emails (press Enter after each email, type 'done' when finished):"
OLD_EMAILS=()
while true; do
    read -p "Email: " EMAIL
    if [ "$EMAIL" == "done" ]; then
        break
    fi
    OLD_EMAILS+=("$EMAIL")
done

# Loop through each old email and run filter-repo command
for OLD_EMAIL in "${OLD_EMAILS[@]}"; do
    git filter-repo -f --commit-callback "
        if commit.author_email == b\"$OLD_EMAIL\":
            commit.author_name = b\"$CORRECT_NAME\"
            commit.author_email = b\"$CORRECT_EMAIL\"
        if commit.committer_email == b\"$OLD_EMAIL\":
            commit.committer_name = b\"$CORRECT_NAME\"
            commit.committer_email = b\"$CORRECT_EMAIL\"
    "
done
