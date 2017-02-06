#!/bin/bash
# This script calculates the expected lifespan of
# an SSD based on the PURCHASE_DATE and the expected write lifespan.

if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user." 2>&1
  exit 1
fi

#Need the start date/puchase date to work out the average (daily) usage.
PURCHASE_DATE='2016-05-17'

# the TB that we expect the drive to tollerate (write) over it's lifespan. Various
# online sources will indicate actual results from test drives. NOT MTBF.
EXPECTED_SSD_LIFETIME_WRITES_IN_TB=150

#assumes 512 Byte blocks from smartctl
USED_GB=`smartctl -a /dev/sda | grep Total_LBAs_Written | awk '{print $10*512/1024/1024/1024}'`
START=$(date --date=$PURCHASE_DATE +%s)
END=$(date +%s)
DAYS_DIFF=$(((($(date +%s) - $(date --date=$PURCHASE_DATE +%s)))/(3600*24)))

#output some information for reference.
smartctl -a /dev/sda |head -n 6 |tail -n 2

#output the lifespan
awk -v used_gb="$USED_GB" -v days_diff="$DAYS_DIFF" -v expected_ssd_lifetime_writes_in_tb="$EXPECTED_SSD_LIFETIME_WRITES_IN_TB" 'BEGIN {
print "Current usage:    " used_gb " GB";
print "Usage precentage: " (used_gb/(expected_ssd_lifetime_writes_in_tb*1024)*100) " %"
print "Age:              " days_diff " days"
print "Lifespan:         " int(days_diff*((expected_ssd_lifetime_writes_in_tb*1024)/used_gb)/365.25) " yrs"
}'
