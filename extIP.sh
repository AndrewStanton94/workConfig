#!/bin/bash
# ip=$(curl ipecho.net/plain)
ip=$(curl icanhazip.com)
if [ "$?" -eq 0 ]
then
    echo "$ip"
else
    echo "#[reverse]✘"
fi
