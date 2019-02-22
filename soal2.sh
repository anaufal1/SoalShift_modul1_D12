#!/bin/bash

echo "---(A)---"

#(a)
awk -F ',' '{if($7 == '2012') a[$1]+=$10} END {for(hasil in a) {print hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | head -1

echo "---(B)---"

#(b)
awk -F ',' '{if($7 == '2012') a[$4]+=$10} END {for(hasil in a) {print hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3

echo "---(C)---"

#(c)
awk -F ',' '{if($4 == "Personal Accessories" || $4 == "Camping Equipment" || $4 == "Mountaineering Equipment") a[$6]+=$10} END {for(hasil in a) {print hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | head -3
