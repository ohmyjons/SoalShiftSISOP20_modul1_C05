#!/bin/bash

jam=`date +"%H"`
# echo $jam

file=$1

fix=$(echo "$file" | tr -d '.txt')

besar=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
kecil=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

cek1=${besar[jam]}
cek2=${besar[jam-1]}
cek3=${kecil[jam]}
cek4=${kecil[jam-1]}

# echo $cek2
# echo $cek4

# asu2=$(echo "ABCD EFG" | tr '[A-Z]' '[(${besar[n]})-ZA-([${besar[n]}])]')

save=$(echo "$fix" | tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"])
# echo ${besar[n]}
# echo $save

 < /dev/urandom tr -dc A-Za-z0-9 | head -c28 > `pwd`/"$save".txt
