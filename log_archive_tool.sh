#!/bin/bash

LOG_DIRECTORY=$1

# Validate if is a directory (-d) or a file (-f)
if [ -d "$LOG_DIRECTORY" ]; then
    echo "VALID Directory: $LOG_DIRECTORY"	
    ls -l "$LOG_DIRECTORY"
	tar -zcvf logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz "$LOG_DIRECTORY"
	
elif [ -f "$LOG_DIRECTORY" ]; then
    echo "VALID File: $LOG_DIRECTORY"
	ls -l "$LOG_DIRECTORY"
	tar -zcvf logs_archive_$(date +%Y%m%d_%H%M%S).tar.gz "$LOG_DIRECTORY"
else
    echo "Error: The directory '$LOG_DIRECTORY' is not valid or does not exists."
    exit 1
fi

