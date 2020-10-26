#/bin/bash

# Teclado português

loadkeys pt-latin9 

# Verificar se estamos no modo UEFI

ls /sys/firmware/efi/efivars

# Ligação à Internet

ping -c 3 archlinux.org

ip link

# Partição UEFI
mkfs.fat -F32 /dev/sda1

# Criar partição root e home e montá-las em /mnt e em /mnt/home, respectivamente:

mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3

mount /dev/sda2 /mnt

mkdir /mnt/home
mount /dev/sda3 /mnt/home

lsblk

