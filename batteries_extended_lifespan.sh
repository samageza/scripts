#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user." 2>&1
  exit 1
else
  tlp setcharge 40 70 BAT0
  tlp setcharge 40 70 BAT1
fi
