# scripts
## batt_view.sh

Script to view the battery charge levels. Supports two batteries. Used for the Lenovo T450 laptop and similar with two batteries.

```
:~# batt_view.sh
Adapter 0: off-line

Battery 0:
Battery 0: Unknown, 5%
Battery 0: design capacity 2035 mAh, last full capacity 1976 mAh = 92%
charging range 0 0

Battery 1: Discharging, 58%, 01:53:25 remaining
Battery 1: design capacity 2184 mAh, last full capacity 1758 mAh = 78%
charging range 0 0
```

## batteries_fullcharge.sh

Script to update the charge thresholds for the batteries to 96%/100%. Used to maximise the battery capacity.


## batteries_extended_lifespan.sh

Script to update the charge thresholds to maximise the battery lifespan. Thresholds set to 40%/70%.

```
:~# ~/bin/batteries_extended_lifespan.sh
Setting temporary charge thresholds for BAT0:
  stop  = 70
  start = 40
Setting temporary charge thresholds for BAT1:
  stop  = 70
  start = 40
```

## SSD_life.sh

Quick script to determine the expected lifespan (in years) for an SSD. Uses the purchase date (or a start date) and the expected total TB's that can be written to the drive to calculate the output.

Update the script with the start date that you want and the expected TB for your SSD model. These can be estimated based on either burn tests or spec sheets. Basically, it just makes me feel better that the drive will outlast any equipment that I currently have. By a large margin. So I can stop worrying.

```
~# ./bin/ssd_life.sh
Device Model:     Samsung SSD 850 EVO M.2 500GB
Serial Number:    S23BNZAH210733X
Current usage:    1727.61 GB
Usage precentage: 1.12475 %
Age:              265 days
Lifespan:         64 yrs
```

## To Do
- [ ] Create desktop/UI integration to change the charge levels
