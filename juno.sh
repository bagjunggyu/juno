### elementary OS 5.0 Juno ###

#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade -y;
sudo apt-get install clementine firefox firefox-locale-ko mpv tilda dconf-editor -y
sudo apt-get autoremove epiphany-browser -y
gsettings set org.gnome.desktop.wm.keybindings close ["'<Super>q'"]
gsettings set org.gnome.settings-daemon.plugins.media-keys play "'F5'"
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "'F1'"
gsettings set org.gnome.settings-daemon.plugins.media-keys next "'F2'"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "'F7'"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "'F6'"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['F11']"
gsettings set org.gnome.mutter overlay-key "'Super_L'"
gsettings set org.pantheon.desktop.gala.behavior overlay-action "'wingpanel --toggle-indicator=app-launcher'"
cd && wget https://github.com/bagjunggyu/alias/archive/master.zip
unzip master.zip && mv ~/alias-master/.bash_aliases . && rm master.zip && rm -r ~/alias-master
sudo apt-get autoremove --purge -y
sudo rm juno.sh
sudo reboot
