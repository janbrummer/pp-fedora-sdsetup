#!/bin/bash

source .env

umount ${FED_IMAGE}p3
umount $PP_PARTB
umount $PP_PARTA
sleep 3
rmdir imgfs
rmdir rootfs
rmdir $KERNEL_RAW_DIR/imgfs
rmdir $KERNEL_RAW_DIR/rootfs
rm fedora.img
losetup -d ${FED_IMAGE}
losetup -d ${PP_IMAGE}
