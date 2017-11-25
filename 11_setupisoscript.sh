#!/bin/bash
chroot squashfs-root dpkg-query -W --showformat='${Package} ${Version}\n' | sudo tee iso/casper/filesystem.manifest
cp -v iso/casper/filesystem.manifest iso/casper/filesystem.manifest-desktop

Ro='ubiquity ubiquity-frontend-gtk ubiquity-frontend-kde casper lupin-casper live-initramfs user-setup discover1 xresprobe os-prober libdebian-installer4' 
	for i in $Ro
	do
		sudo sed -i "/${i}/d" iso/casper/filesystem.manifest-desktop
	done
cd iso && find . -type f -print0 | xargs -0 md5sum | grep -v "\./md5sum.txt" > SHA256SUMS && cd ..
