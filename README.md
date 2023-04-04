# nexmon-pi-zero-2w

1. `cp /lib/lib* /usr/local/lib/`
2. `ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so`
3. `ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so.10`
4. `ln -s /usr/local/lib/libmpfr.so.4.1.4 /usr/local/lib/libmpfr.so.4`
5. `ln -s /usr/local/lib/libmpfr.so /usr/lib/arm-linux-gnueabihf/libmpfr.so.4`
6. `mv /lib/firmware/brcm/brcmfmac43436-sdio.bin /lib/firmware/brcmfmac43436-sdio.bin.orig `
7. `mv \lib\brcmfmac43436-sdio.bin /lib/firmware/lib/firmware/brcm/brcmfmac43436-sdio.bin`
8. `cp \lib\brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/`
9. `cp \bin\nexutil /usr/bin/`
10. `depmod -a`
11. `reboot`
