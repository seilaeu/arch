#/bin/bash

# Mirrors

pacman -Sy reflector &&
reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 

# Instalar sistema base
pacstrap -i /mnt/ base base-devel 
 
# Verificar actualizações
reflector --verbose -a 1 -l 25 --sort rate --save /etc/pacman.d/mirrorlist
yaourt -Syy 
yaourt -Sua --needed

# fstab

genfstab -L -p /mnt >> /mnt/etc/fstab 

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
