# Processlimitor
Small script to limit users cpu usage in specific cases. 

I made this script to handle very specific case where my friends script on my server uses little bit too much cpu power for my tastes. This scirpt checks every hour if user defined has processes that are larger that we want and limiting them accordingly. It has commented out the method to count total processing power used by user so if we find user using many smaller processes we can limit them accordingly by removing comment from two items and changing largest to total in last if function.

This script has no warranty and is free to use, copy, modify and distribute by anyone.
