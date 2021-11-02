#!/bin/bash
echo "informe o nome do arquivo a ser removido"
read DIR
echo $DIR >> "touch_list_rm.txt"
xargs -a<(<touch_list_rm.txt cut -d/ -f1) rm -rf
