# Realtek 8192EU for TL-WN823N for Linux Driver
Realtek 8192EU for TL-WN823N for Linux Driver

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![master](https://img.shields.io/badge/current-v5.2.19.2-aa11ff.svg)](https://github.com/noud/rtl8192EU_WiFi_linux_v5.2.19.1_25633.20171222_COEX20171113-0047/releases)

Working hardware dongle is [https://www.tp-link.com/us/support/download/tl-wn823n/#Driver)
```sh
# lsusb -s 1:3
Bus 001 Device 006: ID 2357:0109
```
```sh
# modinfo 8192eu
filename:       /lib/modules/4.15.0-48-generic/kernel/drivers/net/wireless/8192eu.ko
version:        v5.2.19.1_25633.20171222_COEX20171113-0047
author:         Realtek Semiconductor Corp.
description:    Realtek Wireless Lan Driver
license:        GPL
srcversion:     598FFD569638217ED7A7739
alias:          usb:v2357p0126d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0109d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0107d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0108d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v0BDAp818Cd*dc*dsc*dp*icFFiscFFipFFin*
alias:          usb:v0BDAp818Bd*dc*dsc*dp*icFFiscFFipFFin*
depends:        cfg80211
retpoline:      Y
name:           8192eu
vermagic:       4.15.0-48-generic SMP mod_unload 
```
* I have added support to v5.2.19.1 Realtek driver to build on latest [linux-4.15.y](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/?h=linux-4.15.y)
