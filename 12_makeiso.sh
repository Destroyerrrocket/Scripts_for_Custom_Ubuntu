#!/bin/bash
cd iso
mkisofs -D -r -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ../Polos-v2.iso .
cd ../
