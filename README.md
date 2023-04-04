# nexmon-pi-zero-2w

1. `cp \lib\libisl.so /usr/local/lib/`
2. `ln -s /usr/local/lib/libisl.so /usr/lib/arm-linux-gnueabihf/libisl.so.10`
3. `cp \lib\libmpfr.so /usr/local/lib/`
4. `ln -s /usr/local/lib/libmpfr.so /usr/lib/arm-linux-gnueabihf/libmpfr.so.4`
5. `mv /lib/firmware/brcm/brcmfmac43436-sdio.bin /lib/firmware/brcmfmac43436-sdio.bin.orig `
6. `mv \lib\brcmfmac43436-sdio.bin /lib/firmware/lib/firmware/brcm/brcmfmac43436-sdio.bin`
7. `cp \lib\brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/`
8. `cp \bin\nexutil /usr/bin/`
9. `depmod -a`
10. `reboot`
