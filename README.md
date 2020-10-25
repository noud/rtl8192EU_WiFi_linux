# [Realtek](https://www.realtek.com) [RTL8192EU](https://www.realtek.com/en/products/communications-network-ics/item/rtl8192eu) [Linux](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/?h=linux-5.2.y) driver

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![master](https://img.shields.io/badge/current-v5.2.19.2-aa11ff.svg)](https://github.com/noud/rtl8192EU_WiFi_linux/releases)

## Supported:

- [D-Link](https://dlink.com.au)
    - [DWA-131](http://support.dlink.com.au/Download/download.aspx?product=DWA-131&type=Drivers)
- [Mercusys](https://mercusys.com)
    - [MW300UM](https://www.mercusys.com/en/download/mw300um#Software)
- [TP-Link](https://tp-link.com)
    - [TL-WN821N](https://tp-link.com/en/support/download/tl-wn821n/#Driver)
    - [TL-WN822N](https://tp-link.com/en/support/download/tl-wn822n/#Driver)
    - [TL-WN823N](https://tp-link.com/us/support/download/tl-wn823n/#Driver)
    - [TL-WN8200ND](https://tp-link.com/en/support/download/tl-wn8200nd/#Driver)

## Build

```sh
  $ sudo su
  # make clean
  # make
  # modprobe lib80211
  # modprobe cfg80211
  # insmod 8192eu.ko
  # cp 8192eu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless
  # depmod -a
```

## After install

```sh
# lsusb -s 1:3
Bus 001 Device 006: ID 2357:0109
# modinfo 8192eu
filename:       /lib/modules/5.4.0-29-generic/kernel/drivers/net/wireless/8192eu.ko
version:        v5.2.19.2_COEX20190601-0001
author:         Realtek Semiconductor Corp.
description:    Realtek Wireless Lan Driver
license:        GPL
srcversion:     8ABFAB5F68CBD0BEF8A0A16
alias:          usb:v2357p0126d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0109d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0107d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v2357p0108d*dc*dsc*dp*ic*isc*ip*in*
alias:          usb:v0BDAp818Cd*dc*dsc*dp*icFFiscFFipFFin*
alias:          usb:v0BDAp818Bd*dc*dsc*dp*icFFiscFFipFFin*
depends:        cfg80211
retpoline:      Y
name:           8192eu
vermagic:       5.4.0-29-generic SMP mod_unload
```