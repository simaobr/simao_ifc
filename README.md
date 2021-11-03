1 - Faça um script que deverá receber dois parâmetros que sejam números. Crie variáveis para receber a soma, subtração, multiplicação, divisão e potenciação destes dois números e mostre-os na tela. Multiplique o primeiro número por 3, divida pelo segundo número e mostre o resto da divisão na tela. Utilize os comandos echo e expressões matemáticas com (()) ou [] ).

!/bin/bash
echo 'Atribua um valor para X e um valor para Y'
echo 'digite o valor de X'
read var1
echo 'digite o valor de y'
read var2
echo 'O valor de x + y ='
echo $((var1+var2))
echo 'O valor de x - y ='
echo $((var1-var2))
echo 'O valor de x / y ='
echo $((var1/var2))
echo 'O valor de x ao quadrado ='
echo $((var1**2))
echo 'O valor de y ao quadrado ='
echo $((var2**2))
echo “Se a gente multiplicar  o $var1 por 3 vamos obter $[var1*3].  Se pegar este valor $var3 e dividir por $var2 o resto da divisao é $[(var1*3) % var2]  “


2 - Faça um script que solicite dois números inteiros (medidas em metros) para um usuário. Calcule a área total.

echo "Informe a base do quadrado:"
read base
echo "Informe a altura do quadrado:"
read altura
area=$[ base * altura ]
echo " Este quadrado possui $area metros quadrados"

3 - Faça um script que solicite do usuário ou receba por parâmetro um diretório. Depois, mostre o tamanho deste diretório na tela, ou uma mensagem de erro caso seja um diretório inválido. (use os comandos if -d, du -s, echo)
!/bin/bash
echo "informe o diretorio"
read dir
var2= cd /$dir/
echo "voce acessou o diretorio /$dir” 
var1= du -s
echo $var1
$SHELL
4 - Crie um script que receba por parâmetro um diretório e um número. Liste os N maiores arquivos deste diretório (e não apresente a linha de "Total...") (utilize os comandos ls -lS, head -n e tail -n)

!/bin/bash
echo "informe o diretorio"
read dir
var2= cd /$dir/
echo "voce acessou o diretorio /$dir, e estes são os 6 maiores arquivos dentro deste diretorio"
var1= du -h | sort -nr | head -6
echo $var1
$SHELL

5 - Faça um script que deverá solicitar do usuário que digite um número entre 1 e 12. Dependendo do número, deverá ser impresso na tela o mês correspondente. Caso seja dado uma entrada diferente dos número de 1 a 12, deverá ser mostrado "opção inválida". (utilize os comandos read, echo, if, elif e else)

echo -n "Digite um numero de 1 a 12: "
read VAR

if [[ $VAR -gt 12 ]]
then
  echo "Não pode, $VAR eh maior que 12."
elif [[ $VAR -lt 1 ]]
then
  echo " Não pode, $VAR eh menor que 1."
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

6 - Faça um script que deverá receber como parâmetro arquivo ou pasta. Teste os parâmetros. Se for um arquivo, mostre seu conteúdo, se for uma pasta, liste seu conteúdo (comandos cat e ls respectivamente). (utilize os comandos if -d, if -e, ls e cat)
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












7 -  Faça um script, receberá parâmetros para criação de diretórios. Utilize o comando xargs crie tantos diretórios quantos passados por parâmetros. Depois crie outro script que exclusa todos estes diretórios, também pelo comando xargs (solicite confirmação do usuário a cada comando). (utilize os comandos mkdir, rmdir, xargs -p)

Script 01 - criar 
echo "informe o nome do diretorio a ser criado"
read DIR
echo $DIR >> "lista_dir.txt"
xargs -a<(<lista_dir.txt cut -d/ -f1) mkdir
Script 02 - Remover

Script 02 - remover
echo "informe o nome do diretorio a ser removido"
read DIR
echo $DIR >> "lista_rmdir.txt"
xargs -a<(<lista_rmdir.txt cut -d/ -f1) rmdir

Bônus: eu faria desta forma, dando a opção para o usuário  de criar ou remover. 
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










8 - Faça um script, receberá parâmetros para criação de arquivos. Utilize o comando xargs crie tantos arquivos quantos passados por parâmetros. Depois crie outro script que exclusa todos estes arquivos também pelo comando xargs. (solicite confirmação do usuário a cada comando). (utilize os comandos touch, rm, xargs -p)

criar o arquivo:
#!/bin/bash
echo "informe o nome do arquivo a ser criado"
read DIR
echo $DIR >> "touch_list.txt"
xargs -a<(<touch_list.txt cut -d/ -f1) touch

Remover o arquivo:
#!/bin/bash
echo "informe o nome do arquivo a ser removido"
read DIR
echo $DIR >> "touch_list_rm.txt"
xargs -a<(<touch_list_rm.txt cut -d/ -f1) rm -rf






























9 - Faça um script com o nome de testadir.sh que deverá fazer o seguinte:
 - receber por parâmetro um diretório
 - emitir uma mensagem no início do programa ao usuário como esta: "O script <nome_do_arquivo> está sendo executado a partir do diretório <dir_local>, as HH:mm:ss de dd/mm/YYYY"
 - o script deverá verificar a existência do diretório passado por parâmetro e exibir uma mensagem caso o diretório foi encontrado bem como o seu tamanho. Caso não seja encontrado, deverá exibir mensagem de não encontrado.
 - emita a seguinte mensagem final "Script <testadir.sh> executado por <user> às dd/mm/YYYY HH:mm:ss" e também registre no arquivo de log "testadir.sh.log"

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













10 - Faça um script com o nome de testarq.sh que deverá fazer o seguinte:
 - receber por parâmetro um arquivo qualquer
 - emitir uma mensagem no início do programa ao usuário como esta: "O script <nome_do_arquivo> está sendo executado a partir do diretório <dir_local>, as HH:mm:ss de dd/mm/YYYY"
 - o script deverá verificar se o arquivo passado por parêmtro existe e é do tipo texto. Caso seja, deverá exibir a quantidade de linhas, palavras e caracteres, bem como o seu tamanho. Se não for do tipo texto, deverá somente mostrar seu tipo e o seu tamanho. Caso não seja encontrado, deverá exibir mensagem de não encontrado.
 - emita a seguinte mensagem final "Script <testarq.sh> executado por <user> às dd/mm/YYYY HH:mm:ss" e também registre no arquivo de log "testaarq.sh.log"

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






