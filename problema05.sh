#!/bin/bash
echo -n "Digite um numero de 1 a 12: "
read VAR

if [[ $VAR -gt 12 ]]
then
  echo "Nao pode, $VAR eh maior que 12."
elif [[ $VAR -lt 1 ]]
then
  echo "Nao pode, $VAR eh menor que 1."
elif [ $VAR == 1 ]
then
 echo "JANEIRO"
elif [ $VAR == 2 ]
then
 echo "FEVEREIRO"
elif [ $VAR == 3 ]
then
 echo "MARCO"
elif [ $VAR == 4 ]
then
 echo "ABRIL"
elif [ $VAR == 5 ]
then
 echo "MAIO"
elif [ $VAR == 6 ]
then
 echo "JUNHO"
elif [ $VAR == 7 ]
then
 echo "JULHO"
elif [ $VAR == 8 ]
then
 echo "AGOSTO"
elif [ $VAR == 9 ]
then
 echo "JANEIRO"
elif [ $VAR == 10 ]
then
 echo "OUTUBRO"
elif [ $VAR == 11 ]
then
 echo "NOVEMBRO"
elif [ $VAR= 12 ]
then
 echo "DEZEMBRO"
fi



 
