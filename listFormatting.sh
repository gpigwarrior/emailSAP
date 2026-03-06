#! /bin/bash

# awk -k '{print $20}' user_download_members_rit_3682843.csv | awk -F ' ' '{print $1}' | awk -F '/' '{print $3}'
thisYear=$(date +%G)
lastYear=$(($thisYear-1))
awk -k '$22==0 {print $3 "," $4 "," $5"," $20 ","}' user_download_members_rit_3682843.csv | grep "$thisYear\|$lastYear" | awk -k '{print	$1 " " $2 "," $3 }' 
echo done
