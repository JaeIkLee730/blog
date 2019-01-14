#!/bin/zsh

echo `git add .`
echo `git commit -m "$1"`
echo `git push origin gh-pages`
