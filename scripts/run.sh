! /bin/bash

touch version.txt
echo "1.0" > version.txt
ls -l
git add .
git status
git commit -m "checking in version"
