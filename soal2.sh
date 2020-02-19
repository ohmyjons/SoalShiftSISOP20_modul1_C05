
nama=$1
jam=`date +"%_H"`
chrlen=${#nama}

namaganti=( $nama )

besar=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
kecil=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

besarawal=${besar[$jam-1]}
besarakhir=${besar[$jam]}
kecilawal=${kecil[$jam-1]}
kecilakhir=${kecil[$jam]}

enkripsi=""

echo $namaganti | tr '[A-Z]' '[${besar[$jam]}-ZA-${besar[$jam-1]}]' | `[a-z]` '[${kecil[$jam]]-za-${kecil[$jam-1]}]'

password= < /dev/urandom tr -dc A-Za-z0-9 | head -c28 > /home/iqbalhumam73/p1sisop/$enkripsi.txt
