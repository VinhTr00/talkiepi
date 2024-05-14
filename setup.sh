#!/bin/bash

echo "Create mumble.service"
sudo cp ~/Documents/code-talkiepi/gocode/src/github.com/VinhTr00/talkiepi/conf/systemd/mumble.service /etc/systemd/system/mumble.service

echo "Create restart_mumble.service"
sudo cp ~/Documents/code-talkiepi/gocode/src/github.com/VinhTr00/talkiepi/conf/systemd/restart_mumble.service /etc/systemd/system/restart_mumble.service

sudo cp ~/Documents/code-talkiepi/gocode/src/github.com/VinhTr00/talkiepi/conf/systemd/restart_mumble.sh /usr/bin/restart_mumble.sh

sudo chmod +x  /usr/bin/restart_mumble.sh

sudo systemctl daemon-reload

sudo systemctl enable mumble.service
sudo systemctl enable restart_mumble.service

sudo systemctl start mumble.service
sudo systemctl start restart_mumble.service

echo "###############################"
echo "### Setup Service Completed ###"
echo "###############################"
