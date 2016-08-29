#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
case $1 in
    "intra")
        hugo -b http://i.iee.io --cleanDestinationDir
        ;;
    *)
        hugo --cleanDestinationDir
        ;;
esac

# Add changes to git.
#git add -A

# Commit changes.
msg="rebuilding site `date`"
#if [ $# -eq 1 ]
#  then msg="$1"
#fi
#git commit -m "$msg"

# Push source and build repos.
#git push origin master
case $1 in
    "intra")
        rsync -a --delete public/ x@10.10.12.73:/usr/local/www/eesuda
        ;;
    *)
        git subtree push --prefix=public https://github.com/su-da/website.git gh-pages
        ;;
esac
