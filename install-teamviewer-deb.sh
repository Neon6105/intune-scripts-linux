#!/usr/bin/env bash
# Install TeamViewer Host x64 on Debian-like systems

if hash teamviewer 2>/dev/null; then
  echo "TeamViewer is already installed!"
  exit 0
fi

teamviewer_deb=teamviewer-host_amd64.deb
teamviewer_download_url=https://download.teamviewer.com/download/linux/teamviewer-host_amd64.deb
teamviewer_assignment_id=''

if ! hash wget 2>/dev/null ; then
  sudo apt-get update
  sudo apt-get install -y wget
  sleep 1
fi

# TeamViewer dependancies
sudo apt-get install -y libminizip1 libxcb-xinerama0

wget -O $teamviewer_deb $teamviewer_download_url
sudo dpkg -i $teamviewer_deb
sleep 1
sudo rm -f $teamviewer_deb
sleep 30
sudo teamviewer license accept
sudo teamviewer assignment --id $teamviewer_assignment_id
exit 0
