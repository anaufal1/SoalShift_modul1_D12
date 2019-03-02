#!/bin/bash

echo "(A)"

#(a)
awk -F ',' '{if($7=='2012') x[$1]+=$10} END {for(ans in x) {print ans}}' WA_Sales_Products_2012-14.csv | sort -nr | head -1

echo "(B)"

#(b)
awk -F ',' '{if($7=='2012' && $1=="United States") y[$4]+=$10} END {for(ans in y) {print y[ans],ans}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $1,$2}'

echo "(C)"

#(c)
awk -F ',' '{if($7=='2012' && $1=="United States" && ($4=="Personal Accessories" || $4=="Camping Equipment" || $4=="Outdoor Protection")) a[$6]+=$10} END {for(ans in a) {print a[ans], ans}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $1,$2,$3,$4}'
