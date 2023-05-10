#!/bin/bash

export GOPATH=/home/$USER/gocode
export GOBIN=/home/$USER/bin

value=$(go build -o /home/$USER/bin/talkiepi cmd/talkiepi/main.go 2>&1)

if [ "$value" == "" ];
then
    echo "#######################"
    echo "### Build Completed ###"
    echo "#######################"
else 
    echo "#######################"
    echo "#### Build Failed #####"
    echo "#######################"
    echo $value
fi
