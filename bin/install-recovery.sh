#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52647212:d6d1336cd7626cb0992aacc782ef935b34b119ac; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47678760:0bf4a8f1145e82937eb541493f8e77499aa54430 EMMC:/dev/block/bootdevice/by-name/recovery d6d1336cd7626cb0992aacc782ef935b34b119ac 52647212 0bf4a8f1145e82937eb541493f8e77499aa54430:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
