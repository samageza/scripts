#!/bin/bash
# sudo add-apt-repository ppa:morgwai/tpbat
# sudo apt-get update && sudo apt-get install acpi tpacpi-bat tpbat-utils-acpi
        



acpi -V | awk '/Adapter/ {print $0}'
echo ""
echo "Battery 0:"
acpi -V | grep "^Battery 0"
MIN=$(sudo tpacpi-bat -g ST 1|cut -d " " -f1)
MAX=$(sudo tpacpi-bat -g SP 1|cut -d " " -f1)
echo "charging range $MIN $MAX";

MIN=""
MAX=""

echo ""
acpi -V |grep "^Battery 1"
MIN=$(sudo tpacpi-bat -g ST 2|cut -d " " -f1)
MAX=$(sudo tpacpi-bat -g SP 2|cut -d " " -f1)
echo "charging range $MIN $MAX";
