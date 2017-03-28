#!/bin/bash


#if pssh prallel ssh alredy installed then ok, else install pssh
if apt-cache policy pssh; then
	echo "PSSH OK"

else

apt-get update && apt-get install python-pip && pip install pssh

fi


#check file host available or not, if host file there then ok, 
#else makenod host fifo file to store the argument $1 (hostnames)
FILE=host
if [ $FILE ]; then
	echo " "

else
 
 mknod host p

fi


# store comma seprated servers ips and replace string ',' and store in host file
echo "$1" | sed "s/,/\n/g" > host & 

#for loop to in host file in variable "ip" and do prallel ssh with user ubuntu and execute command argument "$2"
for ip in host; do
	pssh -h $ip -l ubuntu -i "$2"
done