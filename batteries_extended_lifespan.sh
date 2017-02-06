#!/bin/bash
# sudo add-apt-repository ppa:morgwai/tpbat
# sudo apt-get update && sudo apt-get install acpi tpacpi-bat tpbat-utils-acpi

#
# This script updates the tlp thresholds for the battery to 40%/70% to maximise battery lifespan.
#
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user." 2>&1
  exit 1
else
  tlp setcharge 40 70 BAT0
  tlp setcharge 40 70 BAT1
fi
