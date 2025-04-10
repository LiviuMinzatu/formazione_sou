#!/bin/bash
# am-i-root.sh:   Am I root or not?
 
ROOT_UID=0   # Root has $UID 0.
 
if [ "$UID" -eq "$ROOT_UID" ]  # Will the real "root" please stand up?
then
  echo "You are root."
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi

echo "$UID"
echo "$ROOT_UID"

exit 0

#output using sudo mode: 

#sudo bash Codice1.sh
#You are root.
#0
#0

#output as an user:

#You are just an ...
#1000
#0

