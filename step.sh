#!/bin/bash

echo "Searching for changes in tracked files..."
modified_files="$(git status --porcelain)"
if [ ! -z "${modified_files}" ] ; then
  echo "There are uncommited files"
  exit 1
fi

echo "There aren't any uncommited files - yeah!!"
