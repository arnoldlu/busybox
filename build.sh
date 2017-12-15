#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-
#make menuconfig #P684
make -j4 install
#Configure _install folter P685
sudo cp -r running_kernel_initramfs/* _install/
sudo chmod +x _install/etc/init.d/rcS
cd _install
mkdir mnt
mkdir dev
cd dev
sudo mknod console c 5 1
sudo mknod null c 1 3
