#! /bin/bash

START_WORk_TAG="StartWork"
logFileName="StartWorkLog.txt"

commitMessage=""

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

#Get log file


#Get time stamp

echo "Here is the provided commit message:"
echo $commitMessage

#Append Time stamp and Message to log file.

#close the log file.

exit 0

