#!/bin/bash
ip=$(curl ipecho.net/plain)
if [ "$?" -eq 0 ]
then
    echo "$ip"
else
    echo "#[reverse]✘"
fi
