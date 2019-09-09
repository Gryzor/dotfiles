#!/bin/bash

echo "checking out and running git pull on all medable submodules"


if [ $# -ne 1 ]; then
	echo Medable branch updater
	echo
	echo All changes will be stashed and branches will be checked out and updated. 
	echo 
	echo Error: You must supply a branch name to pull from.
        echo
    exit 1
fi

name=$1

echo Updating PAT
cdmed # This command is in my path and it's just a "cd" to PAT folder
git stash save
git co $name

echo Updating Submodules
git submodule sync --recursive
git submodule update --recursive

echo Updating Cortex
cdcortex # This command is in my path and it's just a "cd" to cortex folder
git stash save
git co $name
git pull

echo Updating ResearchStack
cdrs # This command is in my path and it's just a "cd" to RS folder
git stash save
## Research Stack uses a weird branch name for development because it's a fork made wrong.
if [ $1 = "development" ]; then
	git co develop-medable
else
	git co $name
fi
git pull

echo Updating Axon
cdaxon # This command is in my path and it's just a "cd" to Axon folder
git stash save
git co $name
git pull

# Go back to pat and pull everything again just in case.
cdmed
git pull --recurse-submodules





