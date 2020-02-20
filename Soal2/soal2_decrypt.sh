#!/bin/bash

file=$1

# asu= $(stat -f 
jam=`date -r $file "+%H"`
# echo $jam
fix=$(echo "$file" | tr -d '.txt')
besar=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
kecil=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

cek1=${besar[26-jam]}
cek2=${besar[26-jam-1]}
cek3=${kecil[26-jam]}
cek4=${kecil[26-jam-1]}

save=$(echo "$fix" | tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"])

# echo $save

mv $1 "$save".txt