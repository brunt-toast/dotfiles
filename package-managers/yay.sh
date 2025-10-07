useradd -s /bin/bash -c "User for running makepkg" makepkgusr
echo -e "makepkgusr:makepkgusr" | chpasswd

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
chown makepkgusr yay-bin
cd yay-bin
echo "makepkgusr" | sudo -S -u makepkgusr makepkg -si