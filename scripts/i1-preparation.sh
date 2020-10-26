#/bin/bash

# Teclado português

loadkeys pt-latin9 

# Montar raiz em /mnt

if [[ ! -e /mnt ]]; then
    mkdir /mnt
elif [[ ! -d /mnt ]]; then
    echo "/mnt already exists but is not a directory" 1>&2
fi
mount -o subvol=__activo/raiz $device /mnt
df -h &&
sleep 7

# Fundamental para exportar as variáveis acima definidas e disponibilizá-las para outros "scripts"
#bash

