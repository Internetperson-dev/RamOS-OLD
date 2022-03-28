#No more Gnome
sudo apt purge gstreamer1.0-fluendo-mp3 deja-dup shotwell whoopsie whoopsie-preferences -yy
sudo snap remove gnome-characters gnome-calculator gnome-system-monitor
gnome-software-plugin-flatpak -yy
gsettings set com.ubuntu.update-notifier show-livepatch-status-icon false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
sudo apt-get remove thunderbird rhythmbox ubuntu-web-launchers -y
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
sudo apt-get remove nautilus nautilus-* gnome-power-manager gnome-screensaver gnome-termina* gnome-pane* gnome-applet* gnome-bluetooth gnome-desktop* gnome-sessio* gnome-user* gnome-shell-common zeitgeist-core libzeitgeist* gnome-control-center gnome-screenshot gnome* && sudo apt-get autoremove
#Give me that RamOS UI
sudo apt install tasksel
sudo tasksel install kubuntu-desktop
sudo apt update && sudo apt upgrade -y 
