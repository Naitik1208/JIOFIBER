#script act as proxy for firmd
# Created by: Naitik
# Date: 2025-05-24
#

# Store the current time in the format YYYYMMDD_HHMMSS
current_time=$(date +"%Y%m%d_%H%M%S")

# Check if firmd.log exists; if not, create it
log_file="/flash2/firmd/firmd.log"
if [[ ! -f "$log_file" ]]; then
    mkdir -p /flash2/firmd/
    touch "$log_file"
fi

# Append the current time and all arguments to the log file
echo "$current_time - Arguments: $*" >> "$log_file"

echo "Environment Variables:" >> "$log_file"
env >> "$log_file"
echo "--- End Environment Variables ---" >> "$log_file"
# Add a new line at the end for readability
echo "" >> "$log_file" 

# Create a folder with the current time as the folder name
# and copy all /tmp/tr69* files into it
new_folder="/flash2/firmd/$current_time"
mkdir -p "$new_folder"
cp /tmp/tr69* "$new_folder" 2>/dev/null

# Check for "-f" argument and copy specified file to our folder if provided
for i in "$@"; do
    if [[ "$i" == "-f" ]]; then
        # Get the argument following "-f" as the file location
        file_location="$2"
        if [[ -f "$file_location" ]]; then
            cp "$file_location" "$new_folder"
        else
            echo "File not found: $file_location" >> "$log_file"
        fi
        break
    fi
done
