
# BackupDir: /g/changedFile/  #In my laptop

#!/bin/bash

cd /d/awskeys/workspace # to get into local workspace

git checkout master  # for featureX branch

files=$(git diff --name-only)        # for unstaged changes

for temp in $files
do
        {
                cp $temp /g/changedFile/ #backup directory
        }
done

files=$(git diff --cached --name-only) # for staged changes

for temp in $files
do
        {
                cp $temp /g/changedFile/
        }
done

files=$(git diff --name-only HEAD --diff-filter=ACMRTUXB) # for all changes since last commit

for temp in $files
do
        {
                cp $temp /g/changedFile/
        }
done


