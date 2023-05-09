#!/bin/bash

echo "Create mumble.service"

sudo cp /home/$USER/gocode/src/github.com/VinhTr00/talkiepi/conf/systemd/mumble.service /etc/systemd/system/mumble.service

sudo systemctl daemon-reload

sudo systemctl enable mumble.service

sudo systemctl start mumble.service

echo "###############################"
echo "### Setup Service Completed ###"
echo "###############################"
