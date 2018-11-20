#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52647212:2aba7f934e3d78b3a449f946e7eaff70c0d09b66; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47678760:396c58c89bd3afa92b2ec8a9ec35c4ce4983e93b EMMC:/dev/block/bootdevice/by-name/recovery 2aba7f934e3d78b3a449f946e7eaff70c0d09b66 52647212 396c58c89bd3afa92b2ec8a9ec35c4ce4983e93b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
