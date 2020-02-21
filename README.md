# SoalShitSisop20_modul1_C05
> Penyelesaian Soal Shift Modul 1
### Nomer 1

```
echo "no 1a"
awk -F "\t" 'NR > 1 {ar[$13]=ar[$13]+$21} END {for(x in ar) print ar[x],x}' Sample-Superstore.tsv | sort -g | head -1
```
# logika pengerjaannya adalah data profit ditambahkan sesuai dengan region yang diinginkan dan disimpan dalam array, setelah semua data ditambahkan, array diurutkan berdasar nilai profit yang terkecil, baru kemudian diprint record yang paling atas supaya menampilkan record dengan profit terkecil
# awk -F "\t" adalah perintah supaya awk dapat mendeteksi tab sebagai separator
# NR / number of records adalah perintah agar baris record yang diolah atau dicek adalah baris yang sesuai dengan syarat yang sudah ditentukan
# ar adalah nama array yang digunakan untuk menyimpan total profit masing-masing region
# sort -g adalah perintah supaya data di array dapat diurutkan sesuai dengan total profit yang tersimpan dari yang paling kecil
# head -1 adalah perintah untuk melakukan print hanya di data dengan total profit terendah saja atau hanya data yang berada di posisi paling atas

```
echo "no 1b"
awk -F "\t" 'NR > 1 {if($13=="Central") ar[$11]=ar[$11]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -2
```
# logika pengerjaan dari soal 1b sangat mirip dengan logika pengerjaan pada 1a, yang membedakan adalah yang ingin ditampilkan pada soal 1b adalah state yang berada pada jawaban nomor 1a. maka dari itu, indeks array pada soal ini adalah $11, dan juga sebelum menjumlahkan profitnya, diberi syarat $13=Central yang bermaksud kita hanya menjumlahkan profit pada state yang berada pada region central.
# perintah head juga diubah menjadi -2 karena yang diminta di soal adalah 2 records

```
echo "no 1c"
awk -F "\t" '{if($11=="Texas" || $11=="Illinois") ar[$17]=ar[$17]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -10
```
# logika pengerjaan dari soal 1c juga sama dengan soal nomor 1b, yang membedakan adalah di soal 1c yang diminta untuk diprint adalah 10 produk yang memiliki keuntungan paling kecil yang berada pada state pada 1b, yaitu Texas atau Illinois. Maka dari itu, sebelum menjumlahkan profit, diberi syarat agar yang dijumlahkan adalah profit produk pada Texas dan Illinois.
# pada perintah head juga diganti menjadi -10 karena data yang diminta adalah 10 terkecil.


### Nomor 2

Script



### Nomor 3
```for((i=1;i<=28;i++))
	do
	jumlahkenangan=$(/home/iqbalhumam73/p1/kenangan ls -A | grep .jpg | wc -l)
	jumlahduplicate=$(/home/iqbalhumam73/p1/duplicate ls -A | grep .jpg | wc -1)
	wget -o /home/iqbalhumam73/p1/tiga/wget.log "https://loremflickr.com/320/240/cat" -O  /home/iqbalhumam73/p1/tiga/pdkt_kusuma_$i.jpg
	if(!jumlahkenangan){
		mv home/iqbalhumam73/p1/tiga/pdkt_kusuma_$i.jpg home/iqbalhumam73/p1/tiga/kenangan/kenangan_1.jpg
	}
	else{
		for ((j=1;j<jumlahkenangan;j++)){
			do
			if(( (compare -metric AE kenangan_$j.jpg pdkt_kusuma_$i.jpg null:) eq 0){
				if(!jumlahduplicate){
					mv home/iqbalhumam73/p1/tiga/pdkt_kusuma_$i.jpg home/iqbalhumam73/p1/tiga/kenangan/kenangan_1.jpg
				}
			done
      
```
belum selesai mas, cuma sampai 3a dan 3b :(

