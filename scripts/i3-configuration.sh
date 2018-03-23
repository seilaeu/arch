# Localização

echo "pt_PT.UTF-8 UTF-8" > /etc/locale.gen 
locale-gen 
echo "LANG=pt_PT.UTF-8" > /etc/locale.conf 
export LANG=pt_PT.UTF-8 

# Tipo de letra e teclado no terminal

echo "FONT=default8x16" > /etc/vconsole.conf 
echo "KEYMAP=pt-latin9" >> /etc/vconsole.conf 

# Fuso horário

ln -sf /usr/share/zoneinfo/Europe/Lisbon /etc/localtime 

hwclock --systohc --utc 

# Pacman
echo '' >> /etc/pacman.conf 
echo '[multilib]' >> /etc/pacman.conf 
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf 
echo '' >> /etc/pacman.conf 
echo '[archlinuxfr]' >> /etc/pacman.conf 
echo 'SigLevel = Never' >> /etc/pacman.conf 
echo 'Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf 

# Hostname

echo arch > /etc/hostname 

pacman -Syyu 

# Palavra-passe do root

echo 'Definir a palavra passe do root' 
sleep 1 
passwd 

# Adicionar utilizador

echo 'Adicionar utilizador comum' 

useradd -m -G wheel,storage,power,optical,audio,video -s /bin/bash jribeiro 

echo 'Definir a palavra passe do utilizador comum' 
sleep 1 
passwd jribeiro 

# Carregador de arranque

pacman -S grub os-prober 
chmod -x /etc/grub.d/30_os-prober 

# Perguntar ao utilizador o valor das variáveis grub device 

# Volume group name
read -p 'Which device should I use to install grub? ' grubdevice

grub-install --target=i386-pc --force /dev/$grubdevice
	
grub-mkconfig -o /boot/grub/grub.cfg 

# Sudo

echo 'Descomentar a linha wheel' 
sleep 5 
nano /etc/sudoers 

# LVM e BTRFS
pacman -S lvm2 btrfs-progs --needed

# Activar a rede

systemctl enable dhcpcd.service 

sleep 1

# Desmontar /mnt e reiniciar o computador
umount -Rl /mnt &&
sleep 3 &&
reboot

