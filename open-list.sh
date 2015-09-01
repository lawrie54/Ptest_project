#!/bin/bash
clear

echo
echo
echo -n "Enter location of list: "
read location

# check for no response
if [ -z $location ];then
    echo "You did not enter a location."
    exit
fi


# check for wrong location 
if [ ! -f $location ];then
    echo
    echo " The file does not exist."
    exit
fi

firefox &
sleep 4

# Read a list and open each line in a new tab
for i in $(cat $location); do
    firefox -new-tab $i &
    sleep 1
done

