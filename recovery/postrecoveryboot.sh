#!/sbin/sh
touch /tmp/.ignorebootmessage
echo 'version 0.1-pr0' > /tmp/version
echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
sleep 6
busybox dd if=/dev/zero bs=1 count=84 conv=notrunc of=/dev/block/mmcblk0p25

echo "Ownz!"
