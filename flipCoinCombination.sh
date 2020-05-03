#!/bin/bash -x
read -p "Enter how number for flipping the coin" number
heads=1
tails=0
headCount=0
tailCount=0
count=$number
declare A dictionary
while (($count>0))
do
	flipCoin=$(( RANDOM%2 ))

	if [ $flipCoin -eq 1 ]
	then
		dictionary[$count]="heads"
		((headCount++))
	else
		dictionary[$count]="tails"
		((tailCount++))
	fi
((count--))
done
echo ${dictionary[@]}
headPercent=$(echo "scale=2; ($headCount*100)/$number"|bc)
tailPercent=$(echo "scale=2; ($tailCount*100)/$number"|bc)
