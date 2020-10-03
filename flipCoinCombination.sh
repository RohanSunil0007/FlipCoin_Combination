#!/bin/bash -x
echo "Welcome to flip coin Combination"
random=$((RANDOM%2))
if [[ $(($random)) -eq 0 ]]
then
        echo "Head "
else
        echo "Tail "
fi
