rm -f squashfs-root/0_export_all.sh
umount squashfs-root/* 2> /dev/null
umount * 2> /dev/null
pkill Xnest
