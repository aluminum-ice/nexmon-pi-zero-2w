#!/bin/bash

chown root:root ../lib/*
chown root:root ../bin/*
chmod +x ../bin/*

cp ../lib/libisl.so.10 /usr/lib/arm-linux-gnueabihf/libisl.so.10
ln -s /usr/lib/arm-linux-gnueabihf/libisl.so.23.0.0  /usr/lib/arm-linux-gnueabihf/libisl.so.10

cp ../lib/libmpfr.so.4 /usr/lib/arm-linux-gnueabihf/libmpfr.so.4
ln -s /usr/lib/arm-linux-gnueabihf/libmpfr.so.6.1.0 /usr/lib/arm-linux-gnueabihf/libmpfr.so.4

mv /lib/firmware/brcm/brcmfmac43436-sdio.bin /lib/firmware/brcmfmac43436-sdio.bin.orig
cp ../lib/brcmfmac43436-sdio.bin /lib/firmware/lib/firmware/brcm/brcmfmac43436-sdio.bin

cp ../lib/brcmfmac.ko /lib/modules/5.10.103-v7+/kernel/drivers/net/wireless/broadcom/brcm80211/brcmfmac/
cp ../bin/nexutil /usr/bin/
