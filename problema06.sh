#!/bin/bash
echo "Informe um arquivo ou pasta"
read VAR
if [ -d $VAR ] ;
then
        ls -la $VAR
else
        echo "Diretorio não encontrado"
fi
if [ -f $VAR ]; then
     cat $VAR
else
        echo "Arquivo não encontrado"
fi 

