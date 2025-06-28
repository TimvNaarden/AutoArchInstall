git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd .. && rm -rf yay

#More dependencies 
yay -S wlogout swaylock-effects swww

#Zsh
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)

#Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#Dotfiles
git clone https://github.com/timvnaarden/dotfiles ~/dotfiles
cd ~/dotfiles
stow --adopt .
git reset --hard
cd ..
