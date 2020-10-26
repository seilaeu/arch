# Actualizações

reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist 
pacman -Syy
pacman -Su

# Localização

echo "pt_PT.UTF-8 UTF-8" > /etc/locale.gen 
locale-gen 
echo "LANG=pt_PT.UTF-8" > /etc/locale.conf 
export LANG=pt_PT.UTF-8 

# Tipo de letra e teclado no terminal

echo "KEYMAP=pt-latin9" >> /etc/vconsole.conf 
echo "FONT=default8x16" > /etc/vconsole.conf 

# Fuso horário

ln -sf /usr/share/zoneinfo/Europe/Lisbon /etc/localtime 

hwclock --systohc --utc 

date 

# Hostname

echo arch > /etc/hostname 

echo "127.0.1.1 localhost.localdomain arch" > /etc/hosts

# Palavra-passe do root

echo 'Definir a palavra passe do root' 
sleep 1 
passwd 

# Adicionar utilizador

echo 'Adicionar utilizador comum' 

useradd -m -g users -G wheel -s /bin/bash seilaeu 
#useradd -m -G wheel,storage,power,optical,audio,video -s /bin/bash seilaeu 

echo 'Definir a palavra passe do utilizador comum' 
sleep 1 
passwd seilaeu 

# Carregador de arranque

pacman -S grub efibootmgr 

mkdir /boot/efi
mount /dev/sda1 /boot/efi
lsblk 
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi --removable
grub-mkconfig -o /boot/grub/grub.cfg

# Sudo

echo 'Descomentar a linha wheel' 
sleep 5 
vim /etc/sudoers 

# Activar a rede

pacman -S networkmanager

systemctl enable NetworkManager

sleep 1

# Servidor gráfico

pacman -S xorg-server xorg-xinit xorg-xkill

# Desmontar /mnt e reiniciar o computador
exit
umount -Rl /mnt &&
sleep 3 &&
reboot

