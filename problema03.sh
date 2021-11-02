!/bin/bash	
echo "informe o diretorio" 
read dir
var2= cd /$dir/
echo "voce acessou o diretorio /$dir, e estes são os 6 maiores arquvios dentro deste diretorio"  
var1= du -h | sort -nr | head -6
echo $var1
$SHELL
