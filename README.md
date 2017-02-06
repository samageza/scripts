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


## To Do
- [ ] Create desktop/UI integration to change the charge levels
