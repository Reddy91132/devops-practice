#!/bin/bash

DISK_USAGE= $(df -hT | grep xfs)
DISK_THRESHOLD=5 #REAL PROJECT IS 75 

  while IFS= read -r LINE
  do
  USAGE=$(echo $line  df -hT |grep xfs |awk -F " " '{print $6F}'|cut -d "$" -f1)
  PARTITION=$(echo $line  df -hT |grep xfs |awk -F " " '{print $NF}')
  if [ $USAGE -ge $DISK_THRESHOLD ]
   then
     echo "$PARTITION IS more than $DISK_THRESHOLD,current valve $USAGE.PLEASE CHECK"
    fi
    done <<< $DISK_USAGE