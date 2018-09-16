#!/bin/bash
file=/root/peers
  while read line
    do
  	echo "[$line]" >> /etc/asterisk/sip.conf
  	echo "context=tmp" >> /etc/asterisk/sip.conf
  	echo "secret="`pwgen 15 1`>> /etc/asterisk/sip.conf
    done < $file

if [ ! -z $1 ];then
	echo "[$1]" >> /etc/asterisk/sip.conf
        echo "context=tmp" >> /etc/asterisk/sip.conf
        echo "secret="`pwgen 15 1`>> /etc/asterisk/sip.conf
fi

