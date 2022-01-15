#!/bin/bash

# Ensure that you have rebuilt the site and commited your changes
echo "Deploying to https://guptatn.github.io's master..."

# Create the subtree
git subtree split --prefix public -b gh-pages

# Push to origin
git push -f origin gh-pages:master

# Remove so that later the process can be repeated
git branch -D gh-pages

# Push master
git push origin source:source -f
