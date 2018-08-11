#!/system/bin/sh

# enable ZRAM
 
echo "1073741824" >  /sys/block/zram0/disksize 

mkswap /dev/block/zram0

swapon /dev/block/zram0