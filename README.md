# nexmon-pi-zero-2w

Pre-built nexmon files for the Raspberry Pi Zero 2 W [from DrSchottky's fork](https://github.com/DrSchottky/nexmon). These are for old stable Buster lite 2023-02-22 using kernel 5.10

1. `cp /lib/lib* /usr/local/lib/`
2. `cp -r /lib/pkgconfig /usr/local/lib/`
3. `ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so`
4. `ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so.10`
5. `ln -s /usr/local/lib/libmpfr.so.4.1.4 /usr/local/lib/libmpfr.so.4`
6. `ln -s /usr/local/lib/libmpfr.so.4.1.4 /usr/local/lib/libmpfr.so`
7. `chown root:root /usr/local/lib/lib*`
8. `chown -r root:root /usr/local/lib/pkgconfig`
9. `ln -s /usr/local/lib/libisl.so /usr/lib/arm-linux-gnueabihf/libisl.so.10`
10. `ln -s /usr/local/lib/libmpfr.so /usr/lib/arm-linux-gnueabihf/libmpfr.so.4`
11. `mv /lib/firmware/brcm/brcmfmac43436-sdio.bin /lib/firmware/brcmfmac43436-sdio.bin.orig `
12. `mv /lib/brcmfmac43436-sdio.bin /lib/firmware/lib/firmware/brcm/brcmfmac43436-sdio.bin`
13. `cp /lib/brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/`
14. `cp /bin/nexutil /usr/bin/`
15. `depmod -a`
16. `reboot`
