#!/bin/bash -x
read -p "Enter how number for flipping the coin" number
heads=1
tails=0
heads2=2
tails2=3
hhCount=0
htCount=0
thCount=0
ttCount=0
count=$number
declare A dictionary
while (($count>0))
do
	flipCoin1=$(( RANDOM%2 ))
	flipCoin2=$(( RANDOM%2 + 2 ))

	if [[ $flipCoin1 -eq 1 && $flipCoin2 -eq 2 ]]
	then
		dictionary[$count]="HH"
		((hhCount++))
	fi
	 if [[ $flipCoin1 -eq 1 && $flipCoin2 -eq 3 ]]
        then
                dictionary[$count]="HT"
                ((htCount++))
        fi
	 if [[ $flipCoin1 -eq 0 && $flipCoin2 -eq 3 ]]
        then
                dictionary[$count]="TT"
                ((ttCount++))
        fi
	 if [[ $flipCoin1 -eq 0 && $flipCoin2 -eq 2 ]]
        then
                dictionary[$count]="TH"
                ((thCount++))
        fi
((count--))
done
echo ${dictionary[@]}
hhPercent=$(echo "scale=2; ($hhCount*100)/$number"|bc)
htPercent=$(echo "scale=2; ($htCount*100)/$number"|bc)
ttPercent=$(echo "scale=2; ($ttCount*100)/$number"|bc)
thPercent=$(echo "scale=2; ($thCount*100)/$number"|bc)
