#!/bin/bash

echo "Searching for changes in tracked files..."
MODIFIEDFILES=$(git status --porcelain)
if [ -n "$MODIFIEDFILES" ] ; then
  echo "There are uncommited files"
else
  echo "There aren't any uncommited files"
fi
