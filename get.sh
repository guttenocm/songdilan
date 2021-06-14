#!/bin/bash

while :
do
  if ping -s 1000 -c 1 amazonaws.com &> /dev/null
  then
    echo "Host is online"
  fi
  sleep 90
done