# Installation Helper

For use on a fresh Arch install (with DE configured). Installs applications and utilities. 

## Prerequisite

The script runs as root. Makepkg is not allowed as root. 

Install yay. 

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
rm -r yay-bin
```

## Run 

```bash
yes | sudo ./main.sh
```

Note that despite `yes`, some interactivity is required.

## Folders
```
/
|- applications            # GUI applications. Not for WSL. 
|- configs                 # Programmatically installed configurations.
|- deps                    # Dependencies for other packages.
|- fonts                   # Fonts.
|- home                    # The user home folder.
|- jobs                    # Long-running asynchronous tasks.
|- package-managers        # Package manager prerequisites.
|- root                    # The system root folder.
|- services                # Registration for systemctl services.
|- terminal                # Terminal utilities.
```