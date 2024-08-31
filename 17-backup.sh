#!/bin/bas/

SORCE_DIR=$1
DESTI_DIR=$2
DAYS=${3:-14} #if they give $3 consider,if they not give 14 days will continues
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

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
  
  if [ ! -d $SOURCE_DIR ]
  then

    echo "$source_dir does not exist.....please check"

  fi

  if [ ! -d $SOURCE_DIR ]
  then

    echo "$SOURCE_DIR does not exist.....please check"
  fi

  FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)

   echo "files: $FILES"

 if [ ! -z $FILES ] #true if files is empty,! takes it expression false
then
     echo "files are found"
     ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP.zip"
     find ${source_dir} -name "*.log" +14 |zip "$ZIP_FILE" -@
     #CHECK IF ZIP FILE IS SUCCESFULLY CREATED OR NOT 
  if [ -f $ZIP_FILE 
then

  ] echo "succesfully zipped files older than $DAYS"
  else
       echo "zipping the file are failed"
       #remove the file after zipping
   while IFS= read -r file
  do
    echo "deleting files :$FILES"
    rm -rf $file
    done <<< $files
    exit 1   

  fi

else
     echo "no files older than $DAYS"
fi