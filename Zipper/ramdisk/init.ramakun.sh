#!/system/bin/sh

# set LMK value

echo "18432,23040,27648,32256,36864,46080" > /sys/module/lowmemorykiller/parameters/minfree

# enable ZRAM

echo "60" > /proc/sys/vm/swappiness

mkswap /dev/block/zram0

swapon /dev/block/zram0