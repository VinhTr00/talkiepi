#!/bin/bash
export GOPATH=/home/rtr/gocode
export GOBIN=/home/rtr/bin

go build -o /home/rtr/bin/talkiepi cmd/talkiepi/main.go &> temp.log

value=$(<temp.log)
length_value=${#value}

if [ $length_value = 0 ];
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

