# Escritório
pacman -S libreoffice-fresh libreoffice-fresh-pt --needed


# Multimedia
pacman -S vlc pulseaudio pulseaudio-alsa --needed
pacman -S gst-plugins-good gst-plugins-bad gst-plugins-ugly --needed
#pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins libdvdcss libdvdread libdvdnav gecko-mediaplayer dvd+rw-tools dvdauthor dvgrab cdrdao


# pacman -S alsa-utils pavucontrol spotify

# Utilitários
#pacman -S unzip p7zip unrar --needed


# Tipos de letras
pacman -S terminus-font ttf-bitstream-vera ttf-freefont ttf-liberation ttf-droid ttf-ubuntu-font-family opendesktop-fonts --needed
#pacman -S adobe-source-sans-pro-fonts ttf-anonymous-pro ttf-bitstream-vera ttf-dejavu ttf-droid ttf-gentium ttf-liberation ttf-ubuntu-font-family


# Internet
pacman -S firefox firefox-i18n-pt-pt flashplugin wget torbrowser-launcher --needed


# Gráficos
#pacman -S gimp --needed
#yaourt -S gimp-plugin-resynthesizer-git --needed


# Sistema
pacman -S pkgfile pacman-contrib ncdu subversion git --needed
pacman -S vim sed reflector file pkgstats --needed

systemctl start pkgstats.timer
systemctl status pkgstats.timer

# YAY

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -rsi
cd ..
rm -rf yay*
   
   
# Dicionários
pacman -S aspell-pt --needed
yay -S hunspell-pt_pt mythes-pt_pt --needed


# Programação
pacman -S patch fakeroot gcc make pkg-config --needed


# Acestream

#yay -S acestream-player --needed

# Firewall

sudo pacman -S ufw

sudo ufw enable 

sudo ufw status verbose

sudo systemctl enable ufw.service

# Java

yay -S jre --needed 

#yay -S google-chrome --needed
#yay -S ttf-ms-fonts --needed
#yay -S fontconfig-ttf-ms-fonts --needed
#yay -S pamac-aur pamac-tray-appindicator --needed
