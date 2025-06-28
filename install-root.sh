#Update
sudo pacman -Syu

#Install dependencies
sudo pacman -Sy git stow btop dunst hyprland kitty waybar wofi zsh curl udiskie grim slurp wl-clipboard thunar zoxide tmux inotify-tools neovim firefox networkmanager base-devel ttf-jetbrains-mono-nerd autorandr pulseaudio network-manager-applet brightnessctl

#Sddm theme 
sudo touch /etc/sddm.conf
sudo echo "[Theme]" > /etc/sddm.conf
sudo echo "Current=catppuccin-mocha" >> /etc/sddm.conf
sudo pacman -S qt6-svg qt6-declarative qt5-quickcontrols2 unzip wget
wget https://github.com/catppuccin/sddm/releases/download/v1.1.0/catppuccin-mocha.zip
sudo unzip catppuccin-mocha.zip -d /usr/share/sddm/themes/

#Applications
sudo pacman -S blueman pavucontrol networkmanager sddm udiskie
sudo systemctl enable NetworkManager
sudo systemctl enable udisks2
sudo systemctl enable sddm

#Call later zo unzip got to finish
sudo rm catppuccin-mocha.zip
