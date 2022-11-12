##########
#Ejericio 1.10.1 Marra2014

#Cambiar de directorio

cd CSB-master/unix/sandbox

##############
#El tamaño del archivo

ls -lh ../data/Marra2014_data.fasta

##########
#Copia de Marra2014_data.fasta  en sandbox y nombrar my_file.fasta

cp ../data/Marra2014_data.fasta my_file.fasta

############
#Grupos isogroup00036

grep isogroup00036 my_file.fasta | wc -l

###############
#Remplazar delimitar de dos espacios por comas.

cat my_file.fasta | tr -s ' ' ',' > my_file.tmp
mv my_file.tmp my_file.fasta

#################
#Isogrupos unicos en el archivo

grep -o 'isogroup[[:digit:]]\+' my_file.fasta | sort | uniq | wc -l

###############
#Conting con mayor numero de lecturas

grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
