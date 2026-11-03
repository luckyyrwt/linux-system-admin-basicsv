#!/bin/bash

# Set the path where script results will be saved
LOG_FILE="bash-scripts/disk_usage.log"

# Get the current date and time
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Check disk usage of the root filesystem
# awk selects the second line and prints the usage percentage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

# Remove the percentage sign to get a number
# Example: 40% becomes 40
usage=${disk_usage%\%}

# Check if disk usage is 80% or higher
#!/bin/bash

# Log file path: script ke results yahan save honge
LOG_FILE="bash-scripts/disk_usage.log"

# Current date and time capture karo
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# df -h / se root filesystem ki disk usage lo
# awk NR==2 se output ki second line select karta hai
# print $5 fifth field (usage percentage) print karta hai
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

# Percentage sign (%) remove karke numeric value nikalo
# Example: 40% becomes 40
usage=${disk_usage%\%}

# Disk usage 80% ya usse zyada ho toh warning set karo
if [ "$usage" -ge 80 ]; then
    STATUS="WARNING: Disk usage is 80% or above!"
else
    STATUS="Disk usage is normal."
fi

# Curly braces ke andar ka output:
# 1. Terminal par display hoga
# 2. tee -a ke through log file mein append hoga
{
    echo "===== Disk Usage Monitor ====="
    echo "Timestamp: $TIMESTAMP"
    echo "Root disk usage: $disk_usage"
    echo "$STATUS"
    echo "-----------------------------"
} | tee -a "$LOG_FILE"
