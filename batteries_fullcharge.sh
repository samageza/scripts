#!/bin/bash
# sudo add-apt-repository ppa:morgwai/tpbat
# sudo apt-get update && sudo apt-get install acpi tpacpi-bat tpbat-utils-acpi tlp
#
# This script updates the tlp thresholds for the battery to 96%/100% to maximise battery capacity
#
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user." 2>&1
  exit 1
else
  tlp fullcharge BAT0
  tlp fullcharge BAT1
fi
