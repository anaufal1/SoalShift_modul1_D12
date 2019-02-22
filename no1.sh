#!/bin/bash
a=0
for gambar in /home/absolutlubis/Documents/soalshift1/nature/*.jpg
do
base64 -d $gambar | xxd -r > /home/absolutlubis/Documents/soalshift1/bukagambar/$a.jpg
a=$((a+1))
done
