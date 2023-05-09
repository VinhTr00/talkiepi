#!/bin/bash
export GOPATH=/home/$USER/gocode
export GOBIN=/home/$USER/bin

go build -o /home/$USER/bin/talkiepi cmd/talkiepi/main.go &> temp.log

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

