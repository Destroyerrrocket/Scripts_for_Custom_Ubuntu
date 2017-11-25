mv filesystem.squashfs filesystem.squashfs.old
mksquashfs  squashfs-root/ filesystem.squashfs  -comp xz
cp filesystem.squashfs iso/casper/
