#/bin/bash

# Data e hora

timedatectl set-timezone Europe/Lisbon

date

sleep 5


# Partição UEFI

#mkfs.fat -F32 /dev/sda1
#mkdir /boot/efi
#mount /dev/sda1 /boot/efi

#lsblk 


# Partição root 

#mkfs.ext4 /dev/sda2

#mount /dev/sda2 /mnt


# Partição home 

#mkfs.ext4 /dev/sda3

#mkdir /mnt/home

#mount /dev/sda3 /mnt/home

#lsblk

