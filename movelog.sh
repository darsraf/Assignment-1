#!/bin/bash

#Identify target file
targetfile="/users/dr916105/assignment1/Assignment-1/tmp/state.log"

#Current date YYYYMMDD
currentdate=$(date +'%Y%m%d')

#Creates new log file -- statelog.YYYYMMDD
newstatelog="/users/dr916105/assignment1/Assignment-1/statelogs/statelog.${currentdate}"

#Move state.log file into file named statelog.YYYYMMDD
mv "$targetfile" "$newstatelog"

#Identifies and removes old statelog.YYYYMMDD files that are >=2 weeks old
find /users/dr916105/assignment1/Assignment-1/statelogs -name 'statelog.*' -type f -mtime +13 -exec rm {} \;


