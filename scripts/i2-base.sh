#/bin/bash

# Mirrors

pacman -Sy reflector &&
reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 

# Instalar sistema base
pacstrap -i /mnt/ base base-devel 
 
# fstab

genfstab -L -p /mnt >> /mnt/etc/fstab 

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
