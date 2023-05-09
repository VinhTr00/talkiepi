#!/bin/bash

go build -o /home/rtr/bin/talkiepi cmd/talkiepi/main.go &>> temp.log
value = $(<temp.log)

if [$value];
then
    echo "#######################"
    echo "### Build Failed ###"
    echo "#######################"
else 
    echo "#######################"
    echo "### Build Completed ###"
    echo "#######################"
fi

: > temp.txt