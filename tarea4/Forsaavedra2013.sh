#################
#Ejercicio 1.10.3 Plant-Pollinator Networks
#Escrip para determinar el numero de filas y columnas de un archivo
cat saavedra2013/n1.txt | wc -l
head -n 1 saavedra2013/n1.txt | tr -d " " | tr -d "\n" | wc -c

######################
#Numero de filas y columnas de cada file

for i in Saavedra2013/n*.txt
do
 filas= `cat $i | wc -l`
 columnas= `head -n 1 $i | tr -d " " | tr -d "\n" | wc -c`
 echo  $i "Filas:" $filas "Columnas:" $columnas
done
