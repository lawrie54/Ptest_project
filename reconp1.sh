#!/bin/bash
clear

echo
echo -n "Enter a domain: "
read domain

# check for no response
if [ -z $domain ];then
    echo "You did not enter a domain."
    exit
fi

echo
echo "You can following directions. Starting recon on $domain."
echo
read -p "Press <enter> to continue."

firefox &
sleep 4
firefox http://www.intodns.com/$domain &
sleep 1
firefox -new-tab http://www.dnsstuff.com/tools#dnsReport|type=domain&&value=$domain &
sleep 1
firefox -new-tab http://mxtoolbox.com/SuperToolX.aspx?action=dns%3a$domain&run=toolpage &











-- INSERT --                                         50,1          Bot

