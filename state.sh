#!/bin/bash
{
#Current date and time
currentdatetime=$(date +"%Y-%m-%d %H:%M:%S")
echo "Current Date and Time: $currentdatetime"

#Current load
currentload=$(uptime)
echo "Uptime: $currentload"

#Current users logged in
currentusersin=$(who)
echo "Users logged in: $currentusersin"

#Current processes running(PID, PPID included)
allrunningprocs=$(ps -ef)
echo "All running processes: $allrunningprocs"

#Formatting
echo "======================================"
echo "                                      "
}
>>/users/dr916105/Assignment-1/tmp/state.log
