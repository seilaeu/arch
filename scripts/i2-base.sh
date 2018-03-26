#/bin/bash

# Mirrors

pacman -Sy reflector --needed 
reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 

# Instalar sistema base
pacstrap -i /mnt/ base base-devel btrfs-progs 
 
# Verificar actualizações
reflector --verbose -a 1 -l 25 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy 
pacman -Su 

# fstab

genfstab -L -p /mnt >> /mnt/etc/fstab 

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
