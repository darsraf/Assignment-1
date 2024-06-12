#!/bin/bash
{
#Current date and time
currentdatetime=$(date +"%Y-$m-%d %H:%M:%S")
echo "Current Date and Time: $currentdatetime"

#Current load and users logged in
currentload=$(uptime)
echo "Uptime: $currentload"

current usersin=$(who)
echo "Users logged in: $currentusersin"

#Current processes running(PID, PPID included)
allrunningprocs=$(ps -ef)
echo "All running processes: $allrunningprocs"
}
>>/tmp/state.log
