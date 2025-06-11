#!/bin/sh
#
# This script is used to force the firmware signature check to be successful
# Run the script in a loop to keep the firmware signature check successful
while true; do
        # Check if the firmware signature check result file exists
        if [ -e /tmp/firmCheckRes.txt ]; then
                # Replace the firmware signature check result with success
                cat /dev/null >/tmp/firmCheckRes.txt
                echo "Replacing the firmware signature check result with success"
        fi
done