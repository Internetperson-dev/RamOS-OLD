#No more Gnome
sudo apt purge gstreamer1.0-fluendo-mp3 deja-dup shotwell whoopsie whoopsie-preferences -y
sudo snap remove gnome-characters gnome-calculator gnome-system-monitor -y
gnome-software-plugin-flatpak -y
gsettings set com.ubuntu.update-notifier show-livepatch-status-icon false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
sudo apt-get remove thunderbird rhythmbox ubuntu-web-launchers -y
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
sudo apt-get remove nautilus nautilus-* gnome-power-manager gnome-screensaver gnome-termina* gnome-pane* gnome-applet* gnome-bluetooth gnome-desktop* gnome-sessio* gnome-user* gnome-shell-common zeitgeist-core libzeitgeist* gnome-control-center gnome-screenshot gnome* && sudo apt-get autoremove -y
#Give me that RamOS UI
sudo apt install tasksel -y
sudo tasksel installl kubuntu -y
sudo apt-get install lightdm -y
sudo apt install doas
#Need to one day set up auto set up for doas but it is not that day
#nala is just better.
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y
#Install Onlyoffice and ms fonts
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo "deb https://download.onlyoffice.com/repo/debian squeeze main" | sudo tee /etc/apt/sources.list.d/onlyoffice.list
sudo apt-get update -y
sudo apt-get install ttf-mscorefonts-installer -y
sudo apt-get install onlyoffice-documentserver -y
#Configuring more things
sudo apt install mpv -y
sudo apt remove vlc -y
sudo apt install qbittorrent
#Getting Audacium (audcity for now because it is not easily command line installable)
sudo apt install audacity
#Get OBS
sudo apt install v4l2loopback-dkms
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio
#Get handbrake
sudo apt install handbrake
#Use Scrcpy with kde connect for an apple like phone desktop intergration 
sudo apt install scrcpy
#Oh My ZSH! install
sudo apt install zsh
#!/bin/bash

touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
chsh $USER
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
python3 -m pip install -U yt-dlp
#Should auto set it up and add power10k later

#Optimize Firefox for speed and privacy

#Install Layan
