#!/bin/bash

# Set software/binary name
Software_Name="Software_Name"

# Check if software/binary is installed
if dpkg -l | grep -i "${Software_Name}" > /dev/null; then
    echo "Software is installed"
else
    echo "Software is not installed"
fi

# Set the target URL
TARGET_URL="http://example.com"

# Set the wordlist file
WORDLIST_FILE="/path/to/your/wordlist.txt"

# Set the output file
OUTPUT_FILE="gobuster_output.txt"

# Run gobuster
gobuster dir -u $TARGET_URL -w $WORDLIST_FILE -o $OUTPUT_FILE

