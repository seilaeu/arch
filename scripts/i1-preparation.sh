#/bin/bash

# Teclado português

loadkeys pt-latin9 

# Modo UEFI

ls /sys/firmware/efi/efivars


# Interface de rede

ip link

# Ligação à Internet

ping -c 3 archlinux.org

# Relógio

timedatectl set-ntp true

# Partição UEFI
mkfs.fat -F32 /dev/sda1

# Partição root 

mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt

# Partição home 

mkfs.ext4 /dev/sda3
mkdir /mnt/home
mount /dev/sda3 /mnt/home

lsblk

