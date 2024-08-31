#!/bin/bas/

SORCE_DIR=$1
DESTI_DIR=$2
DAYS=${3:-14} #if they give $3 consider,if they not give 14 days will continues

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE() {
    echo -e " $R USAGE :: $N 19-backup.sh <source> <destination> <days(optional)>"
}
if [ $# -lt 2 ]
then

  USAGE
  
  fi
  
  if[ ! -d $SOURCE_DIR ]

    echo "$source_dir does not exist.....please check"

  fi
   if[ ! -d $SOURCE_DIR ]

    echo "$SOURCE_DIR does not exist.....please check"
  fi

  FILES=$(find ${SOURCE_DIR} -name "*.log" -mttime +14)
   echo "files::$FILES"

 if [ -z $FILES ]
then
     echo "files are found"
  else
     echo "no files older than $DAYS"
  fi