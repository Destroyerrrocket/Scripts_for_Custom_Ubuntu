#!/bin/bash
mkdir iso
mkdir mnt
mount -l ./original.iso mnt
cp -rf mnt/* iso/
cp -rf mnt/.disk/ iso/
umount mnt
rm -r mnt
mv iso/casper/filesystem.squashfs ./
unsquashfs filesystem.squashfs
