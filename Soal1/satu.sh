echo "no 1a"
awk -F "\t" 'NR > 1 {ar[$13]=ar[$13]+$21} END {for(x in ar) print ar[x],x}' Sample-Superstore.tsv | sort -g | head -1

echo "no 1b"
awk -F "\t" '{if($13=="Central") ar[$11]=ar[$11]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -2

echo "no 1c"
awk -F "\t" '{if($11=="Texas" || $11=="Illinois") ar[$17]=ar[$17]+$21} END {for(x in ar) print ar[x], x}' Sample-Superstore.tsv | sort -g | head -10
