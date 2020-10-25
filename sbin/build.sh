#!/usr/bin/env sh
# sudo su
make clean
make
modprobe lib80211
modprobe cfg80211
insmod 8192eu.ko
cp 8192eu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless
depmod -a

# @todo
apt install -y make