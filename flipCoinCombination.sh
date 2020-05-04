#!/bin/bash -x
read -p "Enter how number for flipping the coin" number
heads=1
tails=0
heads2=2
tails2=3
heads3=4
tails3=5
hhhCount=0
hhtCount=0
hthCount=0
httCount=0
thhCount=0
thtCount=0
tthCount=0
tttCount=0
count=$number
declare A dictionary
while (($count>0))
do
	flipCoin1=$(( RANDOM%2 ))
	flipCoin2=$(( RANDOM%2 + 2 ))
	flipCoin3=$(( RANDOM%2 + 4 ))

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 4 ]
	then
		dictionary[$count]="HHH"
		((hhhCount++))
	fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="HHT"
                ((hhtCount++))
        fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="HTH"
                ((hthCount++))
        fi

	if [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="HTT"
                ((httCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="THH"
                ((thhCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 2 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="THT"
                ((thtCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 4 ]
        then
                dictionary[$count]="TTH"
                ((tthCount++))
        fi

	if [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 3 ] && [ $flipCoin3 -eq 5 ]
        then
                dictionary[$count]="TTT"
                ((tttCount++))
        fi

((count--))
done
echo ${dictionary[@]}
hhhPercent=$(echo "scale=2; ($hhhCount*100)/$number"|bc)
hhtPercent=$(echo "scale=2; ($hhtCount*100)/$number"|bc)
hthPercent=$(echo "scale=2; ($hthCount*100)/$number"|bc)
httPercent=$(echo "scale=2; ($httCount*100)/$number"|bc)
thhPercent=$(echo "scale=2; ($thhCount*100)/$number"|bc)
thtPercent=$(echo "scale=2; ($thtCount*100)/$number"|bc)
tthPercent=$(echo "scale=2; ($tthCount*100)/$number"|bc)
tttPercent=$(echo "scale=2; ($tttCount*100)/$number"|bc)
