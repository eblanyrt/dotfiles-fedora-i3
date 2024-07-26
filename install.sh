#!/bin/bash

# Updating the whole system
echo "Updating the whole system..."
sudo dnf update -y
echo " "

# Installing dependencies
echo "Installing dependencies..."
sudo dnf install git python3-pip fontawesome4-fonts -y
echo " "

# Installing and configuring kitty
echo "Installing kitty terminal..."
sudo dnf install kitty -y
echo " "
echo "Moving the kitty config to ~/.config"
cp -r .config/kitty ~/.config
echo " "

# Creating directory for cloned projects from GitHub
echo "Creating directory for cloned projects from GitHub..."
mkdir ~/github_projects
echo " "

# Installing rofi
echo "Installing rofi..."
sudo dnf install rofi -y
echo " "
echo "Installing rofi themes..."
rm -rf ~/.config/rofi
git clone https://github.com/w8ste/Tokyonight-rofi-theme.git ~/github_projects/Tokyonight-rofi-theme
sudo cp ~/github_projects/Tokyonight-rofi-theme/tokyonight.rasi /usr/share/rofi/themes
sudo cp ~/github_projects/Tokyonight-rofi-theme/tokyonight_big1.rasi /usr/share/rofi/themes
sudo cp ~/github_projects/Tokyonight-rofi-theme/tokyonight_big2.rasi /usr/share/rofi/themes
echo " "

# Installing bumblebee-status
echo "Installing bumblebee-status..."
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git ~/github_projects/bumblebee-status
echo " "
echo "Moving the directory to ~/.config"
cp -r ~/github_projects/bumblebee-status ~/.config
echo " "

# Installing picom
echo "Installing picom..."
sudo dnf install picom -y
echo " "
echo "Copying the picom config to ~/.config"
cp .config/picom.conf ~/.config
echo " "

# Installing i3-alternating-layout
echo "Installing i3-alternating-layout..."
pip3 install i3ipc
git clone https://github.com/olemartinorg/i3-alternating-layout.git ~/github_projects/i3-alternating-layout
echo " "
echo "Copying the i3-alternating-layout executable to /usr/local/bin"
sudo cp ~/github_projects/i3-alternating-layout/alternating_layouts.py /usr/local/bin
echo " "

# Installing starship.rs
echo "Installing starship.rs..."
curl -sS https://starship.rs/install.sh | sh
echo " "
echo "Create backup for legacy ~/.bashrc"
sudo mv ~/.bashrc ~/.old_bashrc
echo " "
echo "Create a new ~/.bashrc"
sudo cp .config/.bashrc ~/
echo " "
echo "Applying fonts..."
sudo cp fonts/FiraCodeNerdFont-Regular.ttf ~/.local/share/fonts
echo " "
echo "Applying theme to starship.rs..."
starship preset pastel-powerline -o ~/.config/starship.toml
echo " "

# Configuring i3 config
echo "Create backup for	legacy ~/.config/i3/config"
sudo mv ~/.config/i3/config ~/.config/i3/old_config
echo " "
echo "Create a new ~/.config/i3/config"
sudo cp .config/i3/config ~/.config/i3
echo " "

echo "Installation Complete!"
echo "Follow the instructions on README.md to apply theme on Rofi, GTK, Icons, etc.."
