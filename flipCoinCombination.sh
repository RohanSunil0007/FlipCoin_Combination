#!/bin/bash -x
echo "Welcome to flip coin Combination"

read -p "Enter no. of times to flip coin " num
TTT=0
HHH=0
i=0

while [[ $i -lt $((num)) ]]
do
	random1=$((RANDOM%2))
	random2=$((RANDOM%2))
	random3=$((RANDOM%2))
	if [[ $(($random1)) -eq 0 && $(($random2)) -eq 0 && $(($random3)) -eq 0 ]]
	then
        echo "Triplet Head "
			((HHH++))
	elif [[ $(($random1)) -eq 1 && $(($random2)) -eq 1 && $(($random3)) -eq 1 ]]
	then
        echo "Triplet Tail "
			((TTT++))
	fi
	((i++))
done

PercentageofHHH=$(( (HHH*100)/num ))
PercentageofTTT=$(( (TTT*100)/num ))
echo "Triplet combination of HEAD and TAIL are $HHH & $TTT"
echo "% of Triplet head and Doublet tail are $PercentageofHHH % & $PercentageofTTT % "
