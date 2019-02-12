#!/usr/bin/env bash

##all data will be pushed to Vann_sys_info.txt

##the following will produce an abreviated date readout with calendar date and time

time=`date | awk '{print $2, $3, $4}'`

##The next command will print the above results to the respective file mentioned above

printf "The date and time is ${time}." >> Vann_sys_info.txt

##This next line of code envokes the who command to give a list of all users currently on the system

users=`who | awk '{print $1}'`

##Again the following command will print this output to the aforementioned file

printf "The following users are currently on the system: ${users}." >> Vann_sys_info.txt


##The last command will take the uptime command and produce the system uptime for the aforementioned file.

sys_uptime=`uptime -p`

##This last print command will push this data to the above mentioned file

printf "The system has been up for ${sys_uptime}." >> Vann_sys_info.txt


