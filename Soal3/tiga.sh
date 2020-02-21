for((i=1;i<=28;i++))
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

