#Update
sudo pacman -Syu

#Install dependencies
sudo pacman -S git stow btop dunst hyprland kitty waybar wofi zsh curl udiskie grim slurp wl-clipboard thunar zoxide tmux inotify-tools neovim firefox NetworkManager base-devel ttf-jetbrains-mono-nerd x11-xserver-utils

#Sddm theme 
sudo touch /etc/sddm.conf
sudo echo "[Theme]" > /etc/sddm.conf
sudo echo "Current=catppuccin-mocha" >> /etc/sddm.conf
sudo pacman -S qt6-svg qt6-declarative qt5-quickcontrols2 unzip wget
wget https://github.com/catppuccin/sddm/releases/download/v1.1.0/catppuccin-mocha.zip
sudo unzip catppuccin-mocha.zip -d /usr/share/sddm/themes/
sudo rm catppuccin-mocha.zip

#Applications
sudo pacman -S blueman pavucontrol networkmanager sddm udiskie
sudo systemctl enable NetworkManager
sudo systemctl enable udisks2
sudo systemctl enable sddm

