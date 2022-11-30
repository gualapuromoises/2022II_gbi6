`cut -d ':' -f 2 ../bacteria.csv`

listbact=`cut -d ':' -f 2 ../bacteria.csv`

for OC in $listbact
do
	archivo=`touch $OC.csv`
done
