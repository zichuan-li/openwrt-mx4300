This release has most of kmods(kernel module) prebuilt, to use the binaries:

1. Download the kmod.tar.gz to the router, extract and copy the content to `/www`, or you can use another http server. Adjust accordingly.
   ```
   #on browser, right click the kmod.tar.gz, then "copy link address"
   wget https://github.com/...../kmod.tar.gz -O /tmp/kmod.tar.gz

   #extract the file to /www, it's now available at http://openwrt_router_ip/kmod
   tar xvfz /tmp/kmod.tar.gz -C /www

   #or: with usb storage, extract the file there and make a symbolic link in /www
   #ln -s /mnt/sda1/kmod /www
   ```

2. Edit `/etc/opkg/distfeed.conf`, add a new line:
   ```
   src/gz openwrt_kmods http://openwrt_router_ip/kmod
   ```

3. Run `opkg update` and proceed with package installation.

4. Check [this](snapshot-dependency-guide.md) in case of "kernel dependency" error.
   
