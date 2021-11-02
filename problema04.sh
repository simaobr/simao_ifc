echo "informe o diretorio"
read dir
echo "informe um numero"
read num

var2= cd /$dir/
echo "voce acessou o diretorio /$dir, e estes são os $num  maiores arquvios dentro deste diretorio"
var1= du -h | sort -nr | head -$num
echo $var1
$SHELL

