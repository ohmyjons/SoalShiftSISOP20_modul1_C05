#!/bin/bash

jam=`date +"%H"`
# jam=1
echo $jam
# echo $(( ${$jam#0} + 1 ))

file=$1
echo $file

fix=$(echo "$file" | grep -P '.*(?=\.txt)'| tr -d '.txt' | tr -dc A-Za-z )
echo $fix

besar=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
kecil=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

cek1=${besar[$jam]}
cek2=${besar[$jam-1]}
cek3=${kecil[$jam]}
cek4=${kecil[$jam-1]}

# echo $cek1
# echo $cek2
# echo $cek4
# echo anjing

# asus=$(echo "ABCD EFG" | tr '[A-Z]' '[(${besar[n]})-ZA-([${besar[n]}])]')

save=$(echo "$fix" | tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"])
# echo ${besar[n]}
# echo $save

#  < /dev/urandom tr -dc A-Za-z0-9 | head -c28 
mv $1 $save.txt
