#!/bin/bash
/bin/date 2>&1 >> log_problema08.txt #Isso ira adicionar uma DATA no log
time="$(date +%T)"
ano="$(date +%Y)"
mes="$(date +%m)"
dia="$(date +%d)"
user="$(whoami)"
echo "Informe um diretorio"
read DIR
if [ -d $DIR ] ;
then
cd /$DIR/
pwd1="$(pwd)"
tam="$(du -hs)"
user="$(whoami)"
echo "O script está acessado o $DIR, as $time do $dia/$mes/$ano." | tee -a /root/log_problema08.txt
echo "este diretorio esta ocupando em disco o tamanho de $tam"  | tee -a /root/log_problema08.txt
echo "executado por $user às $time do $dia/$mes/$ano"  | tee -a /root/log_problema08.txt

else
 echo "Diretorio não encontrado" | tee -a /root/log_problema08.txt
fi
