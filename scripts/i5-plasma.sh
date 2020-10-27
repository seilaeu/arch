# Plasma 5

pacman -S plasma-desktop konsole dolphin kate kcalc okular gwenview qbittorrent ark clementine kinfocenter kipi-plugins redshift \
kdeconnect kdeplasma-addons plasma-nm plasma-pa spectacle kfind breeze-gtk kde-gtk-config sddm --needed

systemctl enable sddm

cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf

echo "Definir o tema breeze e o Numlock=On"

sleep 5

nano /etc/sddm.conf



