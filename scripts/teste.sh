#/bin/bash

# BTRFS e LVM

# Definir o valor das variáveis vg, lv e xy. 

echo Qual é o nome do grupo de volumes?

read volgroupname

ls /dev/$volgroupname 
