#!/bin/bash

#Bubble Sort in bash

list=()

echo "###### *** Bubble Sort in bash *** ######"
read -p "Input numbers count: " count

create_list(){
	#for num in {1..4}
	for (( num=0; num<$count; num++ ))
	do
		read -p "№$((num+1)): " list[$num]
	done
}

print(){
	echo ""
	echo "$1 Array"
	for (( num=0; num<$count; num++ ))
	do
		var=${list[$num]}
		echo "$(($num+1))) $var"
	done
    echo ""
}

buble_sort(){
	for (( i=0; i<$count; i++)); do
		for (( j=0; j<$(($count-1)); j++)); do
			if [ ${list[$j]} -gt ${list[$(($j+1))]} ]; then
			    tmp=${list[$j]}
				list[$j]=${list[$(($j+1))]}  
		    	list[$(($j+1))]=$tmp
                
            fi
		done
	done
}

create_list

clear

print Initial

buble_sort

print Sorted   
