#/bin/bash

# Mirrors

#pacman -Syy
#pacman -S reflector --needed 
#reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 
#pacman -Syy
#pacman -Su


# Instalar sistema base
pacstrap -i /mnt/ base base-devel linux linux-firmware nano

# btrfs-progs lvm2 pacman dhcpcd systemd-sysvcompat wget vim sudo sed reflector pkgfile patch fakeroot file git gcc make pkg-config
 
# fstab

genfstab -L -p /mnt >> /mnt/etc/fstab 

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
