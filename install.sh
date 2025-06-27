sudo pacman -Syu

#Install dependencies
sudo pacman -S git stow btop dunst hyprland kitty waybar wofi zsh curl udiskie grim slurp wl-clipboard thunar zoxide tmux inotify-tools neovim firefox NetworkManager base-devel

#Install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd .. && rm -rf yay

#More dependencies 
yay -S wlogout swaylock-effects swww

#Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

#Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#Dotfiles
git clone https://github.com/timvnaarden/dotfiles ~/dotfiles
cd ~/dotfiles
stow .
cd ..

#Sddm theme 
sudo touch /etc/sddm.conf
sudo echo "[Theme] \nCurrent=catppuccin-mocha" > /etc/sddm.conf
sudo pacman -S qt6-svg qt6-declarative qt5-quickcontrols2 unzip wget
wget https://github.com/catppuccin/sddm/releases/download/v1.1.0/catppuccin-mocha.zip
sudo unzip catppuccin-mocha.zip -d /usr/share/sddm/themes/
sudo rm catppuccin-mocha.zip

#Applications
sudo pacman -S blueman pavucontrol networkmanager sddm udiskie
sudo systemctl enable NetworkManager
sudo systemctl enable udisks2
sudo systemctl enable sddm
