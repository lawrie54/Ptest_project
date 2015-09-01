#!/bin/bash
clear

echo
echo
echo "Welcome: "
echo "This is my master script."
echo
echo 
echo "1. Recon people"
echo "2. Recon domain"
echo "3. open list in Firefox"
echo "4. Open a domain;s robot.tx in Firefox"
echo
echo -n "Choice: "
read choice

echo $choice

# case statement to get external scipts
case $choice in
     1) ./exam2.sh;;
     2) ./reconp1.sh;;
     3) ./open-list.sh;;
     4) ./robots.sh;;
     *) echo "You have entered a wrong choice."
esac

