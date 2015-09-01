#!/bin/bash
clear

echo
echo -n "First name: "
read fname

# check for no response
if [ -z $fname ];then
    echo "You did not enter a name."
    exit
fi

echo
echo -n "Last name:"
read lname

# check for no response
if [ -z $lname ];then
    echo
    echo "You did not enter a name."
    exit
fi


echo $lname
echo
echo "You can following directions. Starting recon on $fname $lname."
echo
read -p "Press <enter> to continue."

Firefox &
sleep 2
firefox http://www.411.com/name/$fname-$lname/ &
sleep 1
firefox -new-tab http://www.peekyou.com /$fname_$lname
sleep 1
firefox -new-tab http://www.pipl.com/search/?q=$fname+$lname&












