#!/bin/bash

echo "Masukkan nama file zip tanpa ekstensi!"
read filenama
rot=${filenama:0:2}
datenow=`date +%d-%m-%Y`
timenow=`date +%H:%M`
a=abcdefghijklmnopqrstuvwxyz
b=ABCDEFGHIJKLMNOPQRSTUVWXYZ
rot=`echo $rot|sed 's/^0*//'`
let r=0-$rot
`unzip ~/backup/"$filenama.zip" -d ~/backup/`
`sudo <~/backup/"$filenama.txt"  sed "y/$a$b/${a:$r}${a::$r}${b:$r}${b::$r}/" > ~/backup/terdekrip"$filenama".txt`
