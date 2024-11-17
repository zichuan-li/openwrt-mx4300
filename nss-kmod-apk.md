This release has most of the kmods(kernel module) prebuilt, to use the binaries:

1. Download and extract the kmods.tar.gz to the router, for example, `/www`. 
   ```
   #on browser, right click the kmods.tar.gz, then "copy link address"
   wget https://github.com/...../kmods.tar.gz -O /tmp/kmods.tar.gz
   tar xvfz /tmp/kmods.tar.gz -C /www
   ```
   
2. Edit `/etc/apk/repositories.d/distfeeds.list`, add a new line:
   ```
   /www/kmods/packages.adb
   ```

   and change first line to 
   
   ```
   @main https://downloads.openwrt.org/snapshots/targets/qualcommax/ipq807x/packages/packages.adb
   ```
   
   kmod feed is setup and ready for use. For more details, check [this](foss-kmod-apk.md).
