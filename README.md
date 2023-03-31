# nexmon-pi-zero-2w-20230330

### Backup original firmware

cp /lib/firmware/brcm/brcmfmac43436-sdio.bin brcmfmac43436-sdio.bin.orig

### Install new firmware

cp brcmfmac43436-sdio.bin /lib/firmware/brcm/brcmfmac43436-sdio.bin
rmmod brcmfmac
insmod brcmfmac
