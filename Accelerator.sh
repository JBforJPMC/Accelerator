#!/bin/bash

# Create Accelerator directory if it doesn't exist
if [ ! -d "Accelerator" ]; then
    mkdir Accelerator
fi

# Change directory to Accelerator
cd Accelerator || exit

# Create Test.txt file if it doesn't exist
if [ ! -f "Test.txt" ]; then
    touch Test.txt
fi

# Get the current date and time
now=$(date +"%Y-%m-%d %H:%M:%S")

# Get the name of the script file
script_name=$(basename "$0")

# Get the current running OS version
os_version=$(sw_vers -productVersion)

# Get the available RAM in a human-readable format
ram=$(system_profiler SPHardwareDataType | awk '/Memory:/ { print $2" "$3 }')

# Get the UID and short name of the user executing the script
uid=$(id -u)
username=$(id -un)

# Write the collected data into Test.txt file
echo "Accelerator Script Log" >> Test.txt
echo "Date and Time: $now" >> Test.txt
echo "Script Name: $script_name" >> Test.txt
echo "OS Version: $os_version" >> Test.txt
echo "Available RAM: $ram" >> Test.txt
echo "UID: $uid, User: $username" >> Test.txt
echo "" >> Test.txt

echo "Script completed successfully"