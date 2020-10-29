#/bin/bash

# Teclado português

loadkeys pt-latin9 


# Modo UEFI

ls /sys/firmware/efi/efivars

sleep 5


# Interface de rede

ip link

sleep 5

# Ligação à Internet

ping -c 3 archlinux.org

sleep 5

# Relógio

timedatectl set-ntp true

date 

sleep 5


# Instalar sistema base

pacstrap -i /mnt/ base linux linux-firmware sudo nano intel-ucode ntp


# fstab

genfstab -U -p /mnt >> /mnt/etc/fstab 

cat /etc/fstab


# Mudar raiz para a directoria mnt

arch-chroot /mnt /bin/bash
