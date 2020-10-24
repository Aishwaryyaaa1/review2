echo "enter a number"
read n
if [ $n -gt 99 ] && [ $n -lt 1000 ]
then

rem=0
rev=0
temp=$n
while [ $temp -ne 0 ]
do
	rem=$(($temp%10))
	rev=$(($rev*10+$rem))
	temp=$(($temp/10))

done

if [ $rev -eq $n ]
then

	echo "number entered is palindrome"
else
	echo "number entered is not palindrome"
fi

even=0
odd=0

for ((i=2;i<=$n*$n;i++))
do
	while [ $(($n%i)) -eq 0 ]
	do
		if [ $((i%2)) -eq 0 ]
		then
			array[even]=$i
			((even++))
		fi
		if [ $(($i%2)) -ne 0 ]
		then
			array2[odd]=$i
			((odd++))
		fi


		n=$((n/$i))
	done



done

echo "array of even factors :"
echo ${array[@]} 
echo "array of odd factors :"

echo ${array2[@]}

else 
	echo "INVALID INPUT"
fi
