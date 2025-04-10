#!/bin/bash
ROOTUSER_NAME=root
 
username=`id -nu`              # Or...   username=`whoami`
if [ "$username" = "$ROOTUSER_NAME" ]
then
  echo "Rooty, toot, toot. You are root."
else
  echo "You are just a regular fella."
fi

echo "$username"
echo "$ROOTUSER_NAME"

exit 0