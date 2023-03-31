# nexmon-pi-zero-2w-20230330

### Backup original firmware

cp /lib/firmware/brcm/brcmfmac43436-sdio.bin brcmfmac43436-sdio.bin.orig

### Install new firmware

1. sudo su
2. cp brcmfmac43436-sdio.bin /lib/firmware/brcm/brcmfmac43436-sdio.bin
3. rmmod brcmfmac
4. modprobe brcmfmac
