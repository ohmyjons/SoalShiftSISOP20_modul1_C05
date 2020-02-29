# SoalShitSisop20_modul1_C05
> Penyelesaian Soal Shift Modul 1
### Nomer 1

```
echo "no 1a"
awk -F "\t" 'NR > 1 {ar[$13]=ar[$13]+$21} END {for(x in ar) print ar[x],x}' Sample-Superstore.tsv | sort -g | head -1
```
logika pengerjaannya adalah data profit ditambahkan sesuai dengan region yang diinginkan dan disimpan dalam array, setelah semua data ditambahkan, array diurutkan berdasar nilai profit yang terkecil, baru kemudian diprint record yang paling atas supaya menampilkan record dengan profit terkecil

awk -F "\t" adalah perintah supaya awk dapat mendeteksi tab sebagai separator

NR / number of records adalah perintah agar baris record yang diolah atau dicek adalah baris yang sesuai dengan syarat yang sudah ditentukan

ar adalah nama array yang digunakan untuk menyimpan total profit masing-masing region

sort -g adalah perintah supaya data di array dapat diurutkan sesuai dengan total profit yang tersimpan dari yang paling kecil

head -1 adalah perintah untuk melakukan print hanya di data dengan total profit terendah saja atau hanya data yang berada di posisi paling atas

```
echo "no 1b"
awk -F "\t" 'NR > 1 {if($13=="Central") ar[$11]=ar[$11]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -2
```
logika pengerjaan dari soal 1b sangat mirip dengan logika pengerjaan pada 1a, yang membedakan adalah yang ingin ditampilkan pada soal 1b adalah state yang berada pada jawaban nomor 1a. maka dari itu, indeks array pada soal ini adalah $11, dan juga sebelum menjumlahkan profitnya, diberi syarat $13=Central yang bermaksud kita hanya menjumlahkan profit pada state yang berada pada region central.

perintah head juga diubah menjadi -2 karena yang diminta di soal adalah 2 records

```
echo "no 1c"
awk -F "\t" '{if($11=="Texas" || $11=="Illinois") ar[$17]=ar[$17]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -10
```
logika pengerjaan dari soal 1c juga sama dengan soal nomor 1b, yang membedakan adalah di soal 1c yang diminta untuk diprint adalah 10 produk yang memiliki keuntungan paling kecil yang berada pada state pada 1b, yaitu Texas atau Illinois. Maka dari itu, sebelum menjumlahkan profit, diberi syarat agar yang dijumlahkan adalah profit produk pada Texas dan Illinois.

pada perintah head juga diganti menjadi -10 karena data yang diminta adalah 10 terkecil.


### Nomor 2

Dalam mengerjakan Soal shift Nomor 2 Hal pertama yang harus dilakukan adalah mengenerate random password yang ada. Dalam melakukan tugas ini kita menggunakan 
```
< /dev/urandom tr -dc A-Za-z0-9 | head -c28
```
script diatas digunakan untuk melakukan random yang meghasilkan 28 karakter yang terdiri dari A-Z,a-z,0-9.
lalu dalam kodingan ini saya menggunakn read suapay user dapat menginputkan nama file yang diinginkan
```
echo Membuat Random password
# echo $pass
echo masukkan nama \(file\).txt

read file

# save=$(echo "$file" | grep -P '.*(?=\.txt)'| tr -d '.txt' | tr -dc A-Za-z )
save=`echo "$file" | cut -d '.' -f1 | tr -dc A-Za-z `
# echo $save
< /dev/urandom tr -dc A-Za-z0-9 | head -c28 > `pwd`/"$save".txt
```
 `cut -d '.' -f1 | tr -dc A-Za-z` maksut dari kodingan tersebut adalah kita mengambil string sebelum titik yang ada dan hanya membaca huruf saja kalai angka akna di delete

berikut ini adalah kodingan yang sayab gunakna untuk meng encrypte nama file
```
#!/bin/bash

jam=`date +"%H"`
# jam=1
echo $jam
# echo $(( ${$jam#0} + 1 ))

file=$1
echo $file

# fix=$(echo "$file" | grep -P '.*(?=\.txt)'| tr -d '.txt' | tr -dc A-Za-z )
fix2=`echo "$file" | cut -d '.' -f1`
echo $fix2

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

save=$(echo "$fix2" | tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"])
# echo ${besar[n]}
# echo $save

#  < /dev/urandom tr -dc A-Za-z0-9 | head -c28 
mv $1 $save.txt
```
dalam menyelesaikan soal ini kita dituntut untuk melakukan caesar chiper yang lompat n hurufnya dalah sesuai jam waktu kita mengencrypte dan dalam menyelesaikannya saya mengambil jam dari sistem dengan menggunakan`date +"%H"`

lalu untuk menjalankan algoritma caesar chiper kita menggunakan 
` tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"] ` dimana cek sebelumnya merupakan Huruf yang sudah sesuai dengan banyak lompatan di caesar chiper dan untuk menentukan huruf tersebut saya menggunakn array yang ada 
```
besar=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
kecil=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

cek1=${besar[$jam]}
cek2=${besar[$jam-1]}
cek3=${kecil[$jam]}
cek4=${kecil[$jam-1]}
```
jadi nanti cek berisi huruf yang urutannya sesuai jam yang ada misal jam 1 akan di mulai dari b jam 2 dari c dan seterusnya

untuk merename file sayab menggunakna MV
```
mv $1 $save.txt
```

lalu untuk yang descrypt saya lalkukan seperti encrypte namun ada kodingan yang kita ubah.
kita peratma mengambil jam terakhir file di modified dengan menggunakan 
`jam=`date -r $file "+%H"``

lalu nama file yang kita descrypte kita gunakna caesar chiper namun ketika dfi array kita kiurangi
```
cek1=${besar[26-jam]}
cek2=${besar[26-jam-1]}
cek3=${kecil[26-jam]}
cek4=${kecil[26-jam-1]}

save=$(echo "$fix2" | tr '[A-Za-z]' ["$cek1"-ZA-"$cek2""$cek3"-za-"$cek4"])
``` 



<!--stackedit_data:
eyJoaXN0b3J5IjpbMjEzNDk0NjI2M119
-->