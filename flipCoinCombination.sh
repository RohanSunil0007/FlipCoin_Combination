#!/bin/bash -x
echo "Welcome to flip coin Combination"

read -p "Enter no. of times to flip coin " num
T=0
H=0
i=0

while [[ $i -lt num ]]
do
	random=$((RANDOM%2))
	if [[ $(($random)) -eq 0 ]]
	then
        echo "Head "
			((H++))
	else
        echo "Tail "
			((T++))
	fi
	((i++))
done

PercentageofH=$(( (H*100)/num ))
PercentageofT=$(( (T*100)/num ))
echo "Singlet combination of H and T are $H & $T"
echo "% of head and tail are $PercentageofH % & $PercentageofT % "
