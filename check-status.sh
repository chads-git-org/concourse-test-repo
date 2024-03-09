#!/bin/bash

#source progress_bar.sh

ping_result=$(ping -c 4 localhost)

if [ $? -eq 0 ]; then 
  echo "Google is reachable"
  echo "Ping Result:"
  echo "-------------"
  echo "$ping_result"
else
  echo "Google is not reachable"
fi