#!/bin/bash

echo "What IP address do you want to assign eht1?"
read IP

echo "What NetMask do you want to assign(use dotted notation)?"
read NetMask

echo "What Nameserver do you want to assign?"
read Nameserver

echo "What Default Gateway do you want to assign?"
read Default

#Running Config
ip addr add $IP/$NetMask dev eth1

echo "ip route add default via $Default"

#Save Network Configuration 

echo 'NAME="eth1"'         >				/tmp/ifcfg-eth1
echo ONBOOT=yes            >>				/tmp/ifcfg-eth1
echo IPADDR=$IP            >>                           /tmp/ifcfg-eth1
echo NETMASK=$NetMask      >>				/tmp/ifcfg-eth1
echo BOOTPROTO=none        >>				/tmp/ifcfg-eth1
echo TYPE=Ethernet         >>				/tmp/ifcfg-eth1
echo DNS1=$Nameserver      >>				/tmp/ifcfg-eth1






