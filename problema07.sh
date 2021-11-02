#!/bin/bash
echo "1 - Criar diretorio "
echo "2 - Remover diretorio "
echo "informe a opção desejada:"
read VAR
if [[ $VAR == 1 ]];
then
echo "informe o nome do diretorio a ser criado"
read DIR
echo $DIR >> "lista_dir.txt"
xargs -a<(<lista_dir.txt cut -d/ -f1) mkdir
fi
if [[ $VAR == 2 ]];
then
echo "informe o nome do diretorio a ser removido"
read DIR
echo $DIR >> "lista_rmdir.txt"
xargs -a<(<lista_rmdir.txt cut -d/ -f1) rmdir
fi
