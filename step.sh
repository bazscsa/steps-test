#!/bin/bash

echo "Searching for changes in tracked files..."
# git diff --exit-code --quiet
# if [ $? = 1 ]
# then
#   echo "There are uncommited changes"
# else
#   echo "There aren't any uncommited changes"
# fi
TEST=$(git status --porcelain)
if [ -n "$TEST" ] ; then
  echo "There are uncommited new files"
else
  echo "There aren't any uncommited new files"
fi

# also, maybe optionally, check with the --cached flag too!asd
#git status --porcelain
