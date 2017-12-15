#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabi-
#make menuconfig #P684
make -j4 install
#Configure _install folter P685
sudo cp -r running_kernel_initramfs/* _install/
