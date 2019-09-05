! /bin/bash

touch version.txt
echo "1.0" > version.txt
ls -l
git add .
git status
git push origin HEAD:master

echo "version.txt pushed to repository"
