#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run compton --daemon -i 0.9
run libinput-gestures-setup start 2>&1
run syndaemon -i 0.3 -d -K
