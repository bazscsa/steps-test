#!/bin/bash

echo "Searching for changes in tracked files..."
git diff --exit-code --quiet --staged
if [ $? = 1 ]
then
  echo "There are uncommited changes"
else
  echo "There aren't any uncommited changes"
fi

git ls-files --others --exclude-standard | wc -l
if [ $? > 0 ]
then
  echo "There are uncommited new files"
else
  echo "There aren't any uncommited new files"
fi

# also, maybe optionally, check with the --cached flag too!asd
