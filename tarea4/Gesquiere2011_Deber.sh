
#############
#Cuantas veces los niveles de los individuos 3 y 27 han dido grabadas

cut -f 1 data/Gesquiere2011_data.csv | grep -w 3 | grep -c 3  #Para los individuos 3
cut -f 1 data/Gesquiere2011_data.csv | grep -w 27 | grep -c 27 #Para individuos 27

###########################
# Para cada muestra de individuos
#Se crea un archivo sh para contar cada individuo utilizando variables

#Se crea un vector con las IDS del documento

vector=`tail -n +2 data/Gesquiere2011_data.csv | cut -f 1 | uniq `

for i in $vector
do
conteo=`bash Gesquiere2011_contar.sh data/Gesquiere2011_data.csv $i`
echo "ID:" $i "conteo:" $conteo
done


