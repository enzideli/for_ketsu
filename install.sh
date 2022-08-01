sudo pacman -Syyu xorg-xrandr xorg-xsetroot nvidia parcellite nomacs rust xfce4-power-manager xfce4-screenshooter cargo-bloat evince \
ttf-font-awesome pipewire awesome feh xorg xorg-xinit xorg-server steam wine nvidia nvidia-prime \
nvidia-utils nvidia-settings mesa-demos wget udisks2 gvfs gvfs-mtp nautilus kitty bashtop firefox youtube-dl xterm vlc gvim unzip file-roller \
unrar thermald tlp scrot rofi nitrogen picom ntfs-3g alsa-utils neofetch lolcat handbrake gimp figlet playerctl kdeconnect sshfs ttf-sazanami \
zsh acpi python lxappearance libreoffice-fresh dunst code htop jdk8-openjdk jre8-openjdk jre8-openjdk-headless \
lib32-nvidia-utils mpv network-manager-applet noto-fonts-emoji sxiv aarch64-linux-gnu-gcc arm-none-eabi-gcc blueberry xfce4-settings ttf-fira-sans \
ttf-fira-code otf-fira-mono otf-fantasque-sans-mono ttf-fantasque-sans-mono bluez-utils bottom \ 
opencl-nvidia

 
neofetch | lolcat
echo "Now I will enable some services which will ask you for your password so be prepared" | lolcat
echo "Current user: `whoami`"

#Copying the zshrc file to home
cp .zshrc ~/
touch ~/.zsh_history

# Changing the shell to zsh from bash
chsh -s $(which zsh)

#Copying the config files to their destined places
mkdir ~/.config/awesome/ ~/.config/picom/ ~/.config/alacritty

#Making some folders for video conversion scripts that I use for davinci resolve
mkdir -p ~/Videos/Scripts
cp VideoScripts/*.sh ~/Videos/Scripts

#Copying the awesome dotfile (just the config because theme is optional)
cp awesome/rc.lua ~/.config/awesome/

#copying the picom config
cp picom/picom.conf ~/.config/picom/


#copying the alacritty config
cp Alacritty/alacritty.yml ~/.config/alacritty

#Vim and it's files
cp vim/.vimrc ~/

# Cloning paru (my package manager)
git clone https://aur.archlinux.org/paru.git
( cd paru && makepkg -si )

# needed paru packages
paru -Syy davinci-resolve discord-cananry-electron-bin i3lock-fancy-rapid-git google-chrome myxer vim-plug

# Copying xinitrc
cp .xinitrc ~/
