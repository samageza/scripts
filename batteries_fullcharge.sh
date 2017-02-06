#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user." 2>&1
  exit 1
else
  tlp fullcharge BAT0
  tlp fullcharge BAT1
fi
