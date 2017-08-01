#! /bin/bash

START_WORk_TAG="StartWork"
logFileName="StartWorkLog.txt"

commitMessage=""
commitTime=""

#Get commit message if not provided.
if test $# -eq 0;
then
  echo "Provide a commit message: "
  read commitMessage
elif test $# -eq 1;
then
  commitMessage=$1
else
  echo "Too many arguments provided: $#"
  exit 1
fi

#Get time stamp
commitTime=`date '+%a %b %_d %R %Y'`

#Concatonate time stamp, tag, and message
fullMessage=`printf "$commitTime \t$startWorkTag$commitMessage\n"`

echo "Here is the full message"
echo $fullMessage

#Append Time stamp and Message to log file.
echo "$fullMessage" >> $logFileName

#close the log file.

exit 0

