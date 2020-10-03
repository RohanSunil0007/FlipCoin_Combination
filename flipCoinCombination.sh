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
	elif [[$(($random1)) -eq 0 && $(($random2)) -eq 0 && $(($random3)) -eq 1 ]]
	then
		echo "Doublet head and singlet tail "
		((HH++))
		((T++))
	elif [[ $(($random1)) -eq 1 && $(($random2)) -eq 1 && $(($random3)) -eq 0 ]]
        then
                echo "Doublet tail and Singlet head "
                ((TT++))
                ((H++))
	elif [[ $(($random1)) -eq 1 && $(($random2)) -eq 0 && $(($random3)) -eq 0 ]]
        then
                echo "Doublet head and Singlet tail "
                ((HH++))
                ((T++))

	elif [[ $(($random1)) -eq 0 && $(($random2)) -eq 1 && $(($random3)) -eq 1 ]]
        then
                echo "Doublet tail and Singlet head "
                ((TT++))
                ((H++))
	elif [[ $(($random1)) -eq 1 && $(($random2)) -eq 0 && $(($random3)) -eq 1 ]]
        then
                echo "Doublet tail and Singlet head "
                ((TT++))
                ((H++))
	elif [[ $(($random1)) -eq 0 && $(($random2)) -eq 1 && $(($random3)) -eq 0 ]]
        then
                echo "Doublet head and Singlet tail "
                ((HH++))
                ((T++))
	fi
	((i++))
done

PercentageofH=$(( (H*100)/num ))
PercentageofT=$(( (T*100)/num ))
echo "Singlet combination of H and T are $H & $T"
echo "% of head and tail are $PercentageofH % & $PercentageofT % "

PercentageofHH=$(( (HH*100)/num ))
PercentageofTT=$(( (TT*100)/num ))
echo "Doublet combination of HH and TT are $HH & $TT"
echo "% of Doublet head and Doublet tail are $PercentageofHH % & $PercentageofTT % "

PercentageofHHH=$(( (HHH*100)/num ))
PercentageofTTT=$(( (TTT*100)/num ))
echo "Triplet combination of HEAD and TAIL are $HHH & $TTT"
echo "% of Triplet head and Doublet tail are $PercentageofHHH % & $PercentageofTTT % "
