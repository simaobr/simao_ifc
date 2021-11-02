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


