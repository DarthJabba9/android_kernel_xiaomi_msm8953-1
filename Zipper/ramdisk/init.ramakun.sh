#!/system/bin/sh

# enable ZRAM
 
echo "1610612736 " >  /sys/block/zram0/disksize 

echo 'lzo' > /sys/block/zram0/comp_algorithm

echo 60 > /proc/sys/vm/swappiness

mkswap /dev/block/zram0

swapon /dev/block/zram0