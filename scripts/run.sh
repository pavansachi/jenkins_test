! /bin/bash

touch version.txt
echo "1.0" > version.txt
ls -l

git config user.email "dev@github.com"
git config user.name "Pavan"

git add .
git status
git commit -m "checking in version"
