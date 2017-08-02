#! /bin/bash

START_WORk_TAG="StartWork"
logFileName=".git/logs/StartWorkLog"

startWorkMessage=""
startWorkTime=""

#Get start work message if not provided.
if test $# -eq 0;
then
  echo "Provide a commit message: "
  read startWorkMessage
elif test $# -eq 1;
then
  startWorkMessage=$1
else
  echo "Too many arguments provided: $#"
  exit 1
fi

#Get time stamp
startWorkTime=`date '+%a %b %_d %R %Y'`

#Concatonate time stamp, tag, and message
fullMessage=`printf "$startWorkTime \t$startWorkTag$startWorkMessage\n"`

echo "Here is the full message"
echo $fullMessage

#Append Time stamp and Message to log file.
echo "$fullMessage" >> $logFileName

#close the log file.

exit 0

