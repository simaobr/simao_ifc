#!/bin/bash
echo "informe o nome do arquivo a ser criado"
read DIR
echo $DIR >> "touch_list.txt"
xargs -a<(<touch_list.txt cut -d/ -f1) touch
