#!/bin/bash
clear

rm robots.txt tmp 2>/dev/null 

echo
echo -n "Enter a domain: "
read domain

# check for no response
if [ -z $domain ];then
    echo "You did not enter a domain."
    exit
fi

wget -q $domain/robots.txt


# awk example to parse a file
cat robots.txt | grep 'Disallow' | awk '{print $2}' > tmp

firefox &
sleep 4

# Read a list and open each line in a new tab
for i in $(cat tmp); do 
    firefox -new-tab http://www.$domain$i & # 2 vars side by side
    sleep 1
done

