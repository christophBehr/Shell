#!bin/bash

#Shellscript for creating a Virtualbox internal network, because I can´t remeber the command.

#Enter parameters for Vbox Network
echo ¨Enter Network Name¨
read NETWORK_NAME
echo ¨Enter Server IP¨
read SERVER_IP
echo ¨Enter Lower IP range¨
read LOWER_IP
echo ¨Enter upper IP range¨
read UPPER_IP
echo ¨Enter Netmask¨
read NETMASK

#Check if network parameters are correct
read CORRECT

# If parameters correct create network else exit
if[ $CORRECT == ¨y¨ ]; then
vboxmanage dhcpserver add --network=${NETWORK_NAME} --server-ip=${SERVER_IP} --lower-ip=${LOWER_IP} --upper-ip=${UPPER_IP} --netmask=${NETMASK} --enable

else
echo ¨Vbox Network not created¨

fi