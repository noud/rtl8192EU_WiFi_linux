# Realtek 8192EU for TL-WN821N, TL-WN822N, TL-WN823N and TL-WN8200ND for Linux Driver
Realtek 8192EU for WN821N, TL-WN822N, TL-WN823N and TL-WN8200ND for Linux Driver

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![master](https://img.shields.io/badge/current-v5.2.19.2-aa11ff.svg)](https://github.com/noud/rtl8192EU_WiFi_linux/releases)

Working hardware dongle is [TP-Link TL-WN823N](https://www.tp-link.com/us/support/download/tl-wn823n/#Driver)

Also supported:
* [TL-WN821N V6](https://www.tp-link.com/en/support/download/tl-wn821n/#Driver)
* [TL-WN822N V5](https://www.tp-link.com/en/support/download/tl-wn822n/#Driver)
* [TL-WN8200ND V2](https://www.tp-link.com/en/support/download/tl-wn8200nd/#Driver)

How to build:

```sh
  $ sudo su
  # make clean
  # make
  # modprobe lib80211
  # modprobe cfg80211
  # insmod 8192eu.ko
  # cp 8192eu.ko /lib/modules/`uname -r`/kernel/drivers/net/wireless
  # depmod -a
```
After install:

```sh
# lsusb -s 1:3
Bus 001 Device 006: ID 2357:0109
```
```sh
# modinfo 8192eu
filename:       /lib/modules/4.15.0-48-generic/kernel/drivers/net/wireless/8192eu.ko
version:        v5.2.19.2_COEX20190601-0001
author:         Realtek Semiconductor Corp.
description:    Realtek Wireless Lan Driver
license:        GPL
srcversion:     AFB43A6F76D636B59CFBBC0
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
