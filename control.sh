#!/bin/bash
#Script By Tayyip Altunöz

user=`whoami`
. /home/${user}/.bash_profile


path=/home/scriptuser/tayyip/htmlbase
cd $path

export ORACLE_HOME=/home/scriptuser/app/product/instantclient_21_7
export PATH=$PATH:$ORACLE_HOME/bin
export ORACLE_SID=service_name

sqlplus user/password@hostname:port/service_name @$path/report.sql

export CONTENT="$path/html.html"
export SUBJECT="Daily Report"

_to="tayyip@gmail.com"

row=$(cat $path/html.html | grep "no rows selected" | wc -l )

if [ $row = 0  ];then

(
echo "Subject: $SUBJECT"
echo "From: scriptuser@"
#echo "To: $_to"
echo "To: tayyip@gmail.com"
echo "Content-Type: text/html;"
echo "Content-Disposition: inline"
cat  $CONTENT 

) | /usr/sbin/sendmail -t $  

else
echo "no rows selected"
fi


exit
