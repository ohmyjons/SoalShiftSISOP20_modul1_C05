#!/bin/bash

echo Membuat Random password
# echo $pass
echo masukkan nama \(file\).txt

read file

save=$(echo "$file" | grep -P '.*(?=\.txt)'| tr -d '.txt' | tr -dc A-Za-z )
echo $save
< /dev/urandom tr -dc A-Za-z0-9 | head -c28 > `pwd`/"$save".txt