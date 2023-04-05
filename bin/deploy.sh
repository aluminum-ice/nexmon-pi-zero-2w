#!/bin/bash

chown root:root ../lib/*
chown root:root ../bin/*
chmod +x ../bin/*

cp ../lib/lib* /usr/local/lib/
cp -r ../lib/pkgconfig /usr/local/lib/

ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so
ln -s /usr/local/lib/libisl.so.10.0.0 /usr/local/lib/libisl.so.10
ln -s /usr/local/lib/libmpfr.so.4.1.4 /usr/local/lib/libmpfr.so.4
ln -s /usr/local/lib/libmpfr.so.4.1.4 /usr/local/lib/libmpfr.so

chown root:root /usr/local/lib/lib*
chown -R root:root /usr/local/lib/pkgconfig

ln -s /usr/local/lib/libisl.so /usr/lib/arm-linux-gnueabihf/libisl.so.10
ln -s /usr/local/lib/libmpfr.so /usr/lib/arm-linux-gnueabihf/libmpfr.so.4

cp /lib/firmware/brcm/brcmfmac43436-sdio.bin /lib/firmware/brcmfmac43436-sdio.bin.orig
cp ../lib/brcmfmac43436-sdio.bin /lib/firmware/brcm/brcmfmac43436-sdio.bin

cp /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac.ko.orig
cp ../lib/brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/

cp ../bin/nexutil /usr/bin/

depmod -a
