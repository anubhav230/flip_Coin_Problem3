#!/bin/bash -x
heads=1
tails=0
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 1 ]
then
	echo "heads"
else
	echo "tails"
fi
