#!/bin/bash

DISK_USAGE= $(df -hT | grep xfs)
DISK_THRESHOLD=5 #REAL PROJECT IS 75 

  while IFS= read -r LINE
  do
    echo $line
    done <<< $DISK_USAGE