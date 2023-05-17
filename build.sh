#!/bin/bash

export GOPATH=~/Documents/code-talkiepi/gocode
export GOBIN=~/Documents/code-talkiepi/bin

value=$(go build -o ~/Documents/code-talkiepi/bin/talkiepi cmd/talkiepi/main.go 2>&1)

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
