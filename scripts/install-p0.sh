#/bin/bash

# Teclado
loadkeys pt-latin9 

# BTRFS e LVM

# Verificar o valor das variáveis vg, lv e xy. 

# Volume group name
read -p 'Volume group name: ' volumegroupnamevar

# Logical volume name
read -p 'Logical volume name: ' logicalvolumenamevar

# Logical volume size in Megabites or Gygabites
read -p 'Logical volume size in GB: ' logicalvolumesizevar

# Device's path
device=/dev/$volumegroupnamevar/$logicalvolumenamevar

lvcreate -L"$logicalvolumesizevar"G -n $logicalvolumenamevar $volumegroupnamevar

mkfs.btrfs -f -L "$logicalvolumenamevar" /dev/$volumegroupnamevar/$logicalvolumenamevar

# Criar directorias (activo e reserva) e subvolume raiz

mkdir -p /media/arch

##Mudar sdaX para a partição alvo

mount -o rw,suid,dev,exec,auto,nouser,async,noatime,space_cache,autodefrag,compress=lzo $device /media/arch
mkdir -p /media/arch/__activo
mkdir -p /media/arch/__reserva
btrfs sub create /media/arch/__activo/raiz
btrfs sub set-default /media/arch/__activo/raiz
sleep 3
umount -l /media/arch
sleep 7

blkid 

# Montar raiz em /mnt

if [[ ! -e /mnt ]]; then
    mkdir /mnt
elif [[ ! -d /mnt ]]; then
    echo "/mnt already exists but is not a directory" 1>&2
fi
mount -o subvol=__activo/raiz /dev/$volumegroupnamevar/$logicalvolumenamevar /mnt
df -h &&
sleep 7

