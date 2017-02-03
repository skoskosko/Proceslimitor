# Processlimitor
Small script to limit users cpu usage in specific cases. Requires cpulimit

I made this script to handle very specific case where my friends script on my server uses little bit too much cpu power for my tastes. This scirpt checks every hour if user defined has processes that are larger that we want and limiting them accordingly. It has commented out the method to count total processing power used by user so if we find user using many smaller processes we can limit them accordingly by removing comment from two items and changing largest to total in last if function.

USAGE: 
Copy script to desired folder and use command<br>
./userLimit.sh <i>username maxprecentage</i><br>
if this does not work make certain that your user has permission to run it. <br>
To make it work in backround use ctrl + z<br>
and to kill it check the pid with command<br>
top -u <i>yourusername</i><br>
and use<br>
kill -9 <i>PID</i><br><br>


This script has no warranty and is free to use, copy, modify and distribute by anyone.
