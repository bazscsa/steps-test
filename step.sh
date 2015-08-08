#!/bin/bash

echo "Searching for changes in tracked files..."
TEST=$(git status --porcelain)
if [ -n "$TEST" ] ; then
  echo "There are uncommited files"
else
  echo "There aren't any uncommited files"
fi
