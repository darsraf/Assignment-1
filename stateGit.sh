#!/bin/bash

local_gitdir="/users/dr916105/Assignment-1"

finallogfile="$local_gitdir/tmp/state.log"

{
#Current date and time
currentdatetime=$(date +"%Y-%m-%d %H:%M:%S")
echo "Current Date and Time: $currentdatetime"

#List contents of local git assignment repository
echo "Long listed contents(ls -l):" 
ls -l "$local_gitdir"

#Formatting
echo "======================================"
echo "                                      "
}
>> "$finallogfile"

#git add to be uploaded
git add .

#git commit -m "Message"
git commit -m "Update"

#git push origin main push updated project to git repository
git push origin main
