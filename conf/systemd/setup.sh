#!/bin/bash

echo "Create mumble.service"

cp /home/rtr/gocode/src/github.com/VinhTr00/talkiepi/conf/systemd/mumble.service /etc/systemd/system/mumble.service

sudo systemctl enable mumble.service

sudo systemctl start mumble.service

sudo systemctl daemon-reload

echo "Completed"

echo "###########################"
