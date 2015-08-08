#!/bin/bash

echo "Searching for changes in tracked files..."
git diff --exit-code --quiet --staged
if [ $? = 1 ]
then
  echo "There are uncommited changes"
else
  echo "There aren't any uncommited changes"
fi
# also, maybe optionally, check with the --cached flag too!asd
