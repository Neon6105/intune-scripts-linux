#!/usr/bin/env bash
# Install TeamViewer Host x64 on Fedora-like systems

if hash teamviewer 2>/dev/null; then
  echo "TeamViewer is already installed!"
  exit 0
fi

teamviewer_rpm=teamviewer-host.x86_64.rpm
teamviewer_download_url=https://download.teamviewer.com/download/linux/teamviewer-host.x86_64.rpm
teamviewer_assignment_id=''

if ! hash wget 2>/dev/null ; then
  sudo dnf install -y wget
  sleep 1
fi

# TeamViewer dependancies
sudo dnf install -y minizip1.2 libXScrnSaver

wget -O $teamviewer_rpm $teamviewer_download_url
sudo rpm -i $teamviewer_rpm
sleep 1
sudo rm -f $teamviewer_rpm
sleep 30
sudo teamviewer license accept
sudo teamviewer assignment --id $teamviewer_assignment_id
exit 0
