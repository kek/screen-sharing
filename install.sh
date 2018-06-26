#!/bin/sh

CONFIG=~/.screen-sharing.config

if [ ! -e $CONFIG ]; then
  echo "Enter proxy username@host:"
  read PROXY
  echo "PROXY=${PROXY}" > $CONFIG
  ssh-copy-id $PROXY
  exit 1
  else
  echo "Already configured"
fi

. $CONFIG
