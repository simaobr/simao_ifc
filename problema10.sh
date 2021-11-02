#!/bin/bash
/bin/date 2>&1 >> log_problema10.txt #Isso ira adicionar uma DATA no log
time="$(date +%T)"
ano="$(date +%Y)"
mes="$(date +%m)"
dia="$(date +%d)"
user="$(whoami)"
echo "Informe o nome do arquivo"
read ARQ
if [ -f $ARQ ] ;
then
#cat $ARQ
pwd1="$(pwd)"
tam="$(du -hs $ARQ)"
user="$(whoami)"
ARQ1=$( cat -n $ARQ)
PLV=$( wc -w < $ARQ)
LNH=$(wc -l < $ARQ)
CRT=$(wc -c < $ARQ)
echo "$var"
echo "Este arquivo de texto possui $CRT Caracteres,$PLV Palavras,$LNH Linhas "
echo "O script está acessado o $ARQ, as $time do $dia/$mes/$ano." | tee -a /root/log_problema10.txt
echo "este arquivo esta ocupando em disco o tamanho de $tam"  | tee -a /root/log_problema10.txt
echo "executado por $user às $time do $dia/$mes/$ano"  | tee -a /root/log_problema10.txt

else
 echo "arquivo não encontrado" 
fi
