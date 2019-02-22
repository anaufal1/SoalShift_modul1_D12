#!/bin/bash
loop=1
num=1

while [ $loop -ne 0 ]
do
if [[ -f /home/absolutlubis/Documents/soalshift1/password$num.txt ]];
then
	num=$((num + 1))
else

cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -1> /home/absolutlubis/Documents/soalshift1/password$num.txt
loop=0

fi
done
