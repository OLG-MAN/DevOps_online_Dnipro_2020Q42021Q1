#!/bin/bash

#OPTIONS

# Check if the input folders exists.
checkFolder() {
    if [ -d "$1" ]; then
        echo "$2 directory: $1"
    elif [[ "$2" = "Destination" && ! -d "$1" ]]; then
            mkdir -p "$1"
            echo "Directory '$1' has been created"
    else
        echo "No such dirrectory: '$1'"
        exit
    fi
}

# Backup data and save results and errors to the log file.
backupFunction() {
    if [[ -f "$3" || -f "$4" ]]; then
        touch "$3" "$4"
    fi
    rsync -a --delete --out-format='%t %o %n' $1 $2 1>>"$3" 2>>"$4"
}    

optionHelp() {
cat <<EOF
Usage: backup [SOURCE DIRECTORY] [DESTINATION DIRECTORY]
    SOURCE DIRECTORY - ex.: /home/
        Full path to the directory backup of which will be created.
    DESTINATION DIRECTIORY - ex.: /backup/
        Full path to the directory to which backup will be saved of SOURCE DIRECTORY. 
        If DESTINATION DIRECTORY doesn't exist, script will create this onу automatically.
EOF
}

#MAIN

if [[ -z "$1" || -z "$2" ]]; then
    optionHelp
elif [ "$1" = --help ]; then
    optionHelp
else
    SOURCE_DIR="$1"
    checkFolder "$SOURCE_DIR" "Source"

    DEST_DIR="$2"
    checkFolder "$DEST_DIR" "Destination"

    LOG_FILE="backup.log"
    ERR_LOG="error.log"

    backupFunction "$SOURCE_DIR" "$DEST_DIR" "$LOG_FILE" "$ERR_LOG"
fi
