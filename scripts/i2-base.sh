#/bin/bash

# Mirrors

#pacman -Syy
#pacman -S reflector --needed 
#reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 
#pacman -Syy
#pacman -Su


# Instalar sistema base
pacstrap -i /mnt/ base linux linux-firmware sudo nano intel-ucode

# fstab

genfstab -U -p /mnt >> /mnt/etc/fstab 

# Mudar raiz para a directoria mnt

arch-chroot /mnt /bin/bash
