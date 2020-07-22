echo -n "hello"
echo "world"
num=5
declare -i sum=$(expr num+5)
declare -i sum2=$((num+5))
echo sum
echo $sum
echo $sum2

let sum3=(sum+sum2)
echo "sum3"
echo $sum3

str1="hello"
str2="hell"

if [[ $str1 == "hell" ]] ;  then
    echo " 1st -- equal"
else 
    echo " 1st -- not equal"
fi 


if (expr $sum == $sum2 ) ;  then
    echo " normal --- equal1"
else 
    echo "normal --- not equal"
fi

if [[ "sum" == "sum2" ]] ;  then
    echo "**equal"
else 
    echo "not equal"
fi

if [[ -e "/home" ]]; then
    echo "exists"
else 
    echo "doesnt exist"
fi
declare -i number=55



declare -a names=("Serkan" "Mucahit" "Robert" "Belkis ve Fatma")
names[4]+="ali"

#for name in "${#names[@]}";
for name in {1..5}
do
	echo "Welcome $name to home"
done

names["Serkan"]+="Ali"

echo ${#names[*]}
echo ${!names[*]}

for name in "${names[@]}";
do
	echo "Welcome $name to home"
done

my_array=(foo bar)
my_array+=(baz)
echo ${my_array[@]}
echo here
echo ${my_array[1]}
echo there
i=1

end=$(cat workshop.md | wc -l )

echo $end

for (( var=1; var<$end/200; var++ )); do
    echo "Weekday $i: $var"
    ((i++))
done

