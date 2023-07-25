#!bin/bash

#Shellscript for creating a Virtualpox internal network, because I can´t remeber the command...

#declaration of variable
NETWORK_NAME=$1
SERVER_IP=$2
LOWER_IP=$3
UPPER_IP=$4
NETMASK=$5
CORRECT=$6

#Enter parameters for Vbox Network
echo ¨Enter Network Name¨
read $NETWORK_NAME
echo ¨Eenter Server IP¨
read $SERVER_IP
echo ¨Enter Lower IP range¨
read $LOWER_IP
echo ¨Enter upper IP range¨
read $UPPER_IP
echo ¨Enter Netmask¨
read $NETMASK

#Check if network parameters are correc
echo ¨Check if values correct y/n¨
echo ¨Creating Network $NETWORK_NAME¨
echo ¨Server IP is $SERVER_IP¨
echo ¨Lower IP is $LOWER_IP¨
echo ¨UPPER IP is $UPPER_IP¨
echo ¨Netmask is $NETMASK¨
read $CORRECT

# If parameters isnerted correctly create network else exit to shell
if[$CORRECT == ¨y¨];then
vboxmanage dhcpserver add --network=${NETWORK_NAME} --server-IP=${SERVER_IP} --lower-ip=${LOWER_IP} --upper-ip=${UPPER_IP} --netmask=${NETMASK} --enable

else
echo ¨Vbox Network not created¨