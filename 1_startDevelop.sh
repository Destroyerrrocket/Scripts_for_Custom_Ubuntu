#!/bin/bash
# you will have to run manually the 0_export_all.sh script to prepare properly the enviorment

Xnest -ac :10 -geometry 1920x1080 &
cd squashfs-root
echo Mounting proc
mount -t proc /proc proc/
echo Mounting sys
mount -t sysfs /sys/ sys/
echo Mounting dev
mount -o bind /dev dev/
cp /etc/resolv.conf etc/
echo "export HOME=/root" > 0_export_all.sh
echo "export DISPLAY=:10" >> 0_export_all.sh
echo "export LC_ALL=C" >> 0_export_all.sh
chmod +x 0_export_all.sh
chroot . bash
