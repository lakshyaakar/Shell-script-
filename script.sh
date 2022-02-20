#!/bin/bash
MYPATH=/home/lakshya/Documents/Assignment1/email.txt
touch /home/lakshya/Documents/Assignment1/email.txt
echo "Hello," > $MYPATH
echo "PFB the information." >> $MYPATH
echo "" >> $MYPATH


echo "date: " >> $MYPATH
date >> $MYPATH

echo "--------------------" >> $MYPATH
echo "vmstat:" >> $MYPATH
vmstat 1 5 >> $MYPATH

echo "--------------------" >> $MYPATH
echo "lsmem:" >> $MYPATH
lsmem >> $MYPATH

echo "--------------------" >> $MYPATH
echo "uptime:" >> $MYPATH
uptime >> $MYPATH

echo "--------------------" >> $MYPATH
echo "Currently connected:" >> $MYPATH
w >> $MYPATH

echo "--------------------" >> $MYPATH
echo "Last logins:" >> $MYPATH
last -a |head -3 >> $MYPATH

echo "--------------------" >> $MYPATH
echo "Memory usage:" >> $MYPATH
free -h >> $MYPATH

mail -s 'Mail through terminal' lakshyaakar007@gmail.com < $MYPATH
rm $MYPATH 

