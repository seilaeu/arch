#/bin/bash

# Teclado português

loadkeys pt-latin9 

# Ligação à Internet

ping -c 3 archlinux.org

ip link

# Partição UEFI
mkfs.fat -F32 /dev/sda1

# Criar partição raiz e montá-la em /mnt

mkfs.ext4 /dev/sdaX
mount /dev/sdaX /mnt

lsblk
