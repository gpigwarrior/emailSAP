#!/bin/bash

currentName=empty
while [ "$currentName" != "done" ]
do
	currentName="$(awk -k '{print $1}' emailList.csv | fzf)"
# awk -v awkName="$currentName" '1 {print $1 awkName}' emailList.csv
awk -k -v awkName="$currentName" '$1==awkName {print $2}' emailList.csv 
# awk -k -v awkName="$currentName" '$1==awkName {print $1 "," $2}' emailList.csv >> totalList.csv

	# exitLoop=done
done | xclip -selection clipboard
# cat newList.csv | xclip -selection clipboard
# sort -u totalList.csv | sed 's/done,//'> /tmp/SAP; cat /tmp/SAP > totalList.csv
