
b=$((2*3))

echo $b

c=$(echo "hello world of wonders!" | cut -d" " -f2)

echo $c

a=$(echo "10/3.1" | bc )  # awk       d=$(bc <<< echo "2.5*3") heredoc

echo $a


read -p "Bir sayı giriniz: " bir

echo $bir
