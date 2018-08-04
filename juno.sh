### elementary OS 5.0 Juno ###

#!/bin/bash
### 시스템 업데이트 및 앱 설치
sudo apt-get update
sudo apt-get dist-upgrade -y;
sudo apt-get install clementine moc firefox firefox-locale-ko moc flashplugin-downloader mpv tilda dconf-editor -y
sudo apt-get autoremove epiphany-browser -y
### 창 닫기
gsettings set org.gnome.desktop.wm.keybindings close ["'<Super>q'"]
### 음악 재생
gsettings set org.gnome.settings-daemon.plugins.media-keys play "'F5'"
### 이전 트랙
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "'F1'"
### 다음 트랙
gsettings set org.gnome.settings-daemon.plugins.media-keys next "'F2'"
### 소리 크게
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "'F7'"
### 소리 작게
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "'F6'"
### 전체 화면
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['F11']"
### 애플리케이션 메뉴
gsettings set org.gnome.mutter overlay-key "'Super_L'"
gsettings set org.pantheon.desktop.gala.behavior overlay-action "'wingpanel --toggle-indicator=app-launcher'"
### apt 한글 명령어 alis
cd && wget https://github.com/bagjunggyu/alias/archive/master.zip
unzip master.zip && mv ~/alias-master/.bash_aliases . && rm master.zip && rm -r ~/alias-master
### 정리 및 다시 시작
sudo apt-get autoremove --purge -y
sudo rm juno.sh
sudo reboot
