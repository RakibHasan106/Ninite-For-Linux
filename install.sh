#!/bin/bash

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install basic packages from APT
sudo apt install -y \
    gcc \
    git \
    vlc \
    telegram-desktop \
    stacer \
    obs-studio \
    openjdk-21-jdk \
    curl \
    wget \
    gpg \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    qbittorrent \
    nodejs \
    gnome-shell-extensions \
    gnome-shell-extension-prefs \
    lm-sensors \
    python3-pip \
    
    

# -------------------------------
# Install Visual Studio Code
# -------------------------------
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code
rm microsoft.gpg

#Install I-Bus-Avro

sudo apt-get install ibus-avro 

# -------------------------------
# Install JDownloader2
# -------------------------------

chmod +x jdownloader2.sh
./jdownloader2.sh

# -------------------------------
# Install Obsidian
# -------------------------------
sudo snap install obsidian --classic
# -------------------------------
# Install Spotify
# -------------------------------
sudo snap install spotify

# -------------------------------
# Install RustDesk
# -------------------------------
sudo flatpak install rustdesk -y

#install mega
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb && sudo apt install "$PWD/megasync-xUbuntu_22.04_amd64.deb" -y
rm megasync-xUbuntu_22.04_amd64.deb

#install android-studio
sudo snap install android-studio --classic

#install cloudflare warp
curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ jammy main' | sudo tee /etc/apt/sources.list.d/cloudflare-client.list > /dev/null
sudo apt update
sudo apt install cloudflare-warp -y



echo "✅ All software installed successfully."

