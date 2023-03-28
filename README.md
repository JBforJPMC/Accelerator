# Accelerator
A bash script for creating an Accelerator directory.

This Accelerator script is done for an assignment for JPMC by JB. 

The first segment of this script is creating the Accelerator directory, and then changing to said directory. There is a check built into this to see if there is an Accelerator directory. The exit on 9 is kept in case the cd fails and to separate the two steps of the script. 

The second segment is the creation of the Test.txt file. This is also checked to see if there is a file before one is made, like the Accelerator directory above.

The data collection comes next. Gathering the date and time, naming the script, pulling the OS version (I used sw_vers because this prompt/script should be used on Ventura/MacOS devices. sw_vers is proprietary to MacOS and could be altered to adapt this script to include Linux machines), and the RAM and UID/Username. Ram was pulled via system_profiler and SPHardwareDataType, again like sw_vers, proprietary to macOS.

The last stage was writing the collected data to the Test.txt log file. I kept the script open to allow appending and added an empty echo as a line break to separate the logs appendance data to read easier.
