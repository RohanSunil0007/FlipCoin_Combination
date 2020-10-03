#!/bin/bash -x
echo "Welcome to flip coin Combination"

read -p "Enter no. of times to flip coin " num
TT=0
HH=0
i=0

while [[ $i -lt num ]]
do
	random1=$((RANDOM%2))
	random2=$((RANDOM%2))
	if [[ $(($random1)) -eq 0 && $(($random2)) -eq 0 ]]
	then
        echo "Doublet Head "
			((HH++))
	elif [[ $(($random1)) -eq 1 && $(($random2)) -eq 1 ]]
	then
        echo "Doublet Tail "
			((TT++))
	else
			echo "It is Tail and Head"
			((T++))
			((H++))
	fi
	((i++))
done

PercentageofHH=$(( (HH*100)/num ))
PercentageofTT=$(( (TT*100)/num ))
echo "Doublet combination of HH and TT are $HH & $TT"
echo "% of Doublet head and Doublet tail are $PercentageofHH % & $PercentageofTT % "
