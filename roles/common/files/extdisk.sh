#!/bin/bash
echo -e "n\np\n3\n\n\nt\n3\n8e\nw\n" | fdisk /dev/sda
partprobe
kpartx /dev/sda3
pvcreate /dev/sda3
vgextend rhel /dev/sda3
lvextend -l +100%FREE /dev/rhel/root
xfs_growfs /dev/mapper/rhel-root
