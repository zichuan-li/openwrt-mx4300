#!/bin/sh

MD="../note.md"
mkdir release
cp  bin/targets/qualcommax/ipq807x/openwrt-qualcommax-ipq807x-linksys_mx4300-* release/
cp  bin/targets/qualcommax/ipq807x/openwrt-qualcommax-ipq807x-linksys_mx4300.manifest release/
cp bin/targets/qualcommax/ipq807x/openwrt-imagebuilder* release/
cd release
kernel=$(cat openwrt-qualcommax-ipq807x-linksys_mx4300.manifest | grep ^kernel)
checksum=$(sha256sum *)
echo "- $kernel

- sha256sum
\`\`\`
${checksum}
\`\`\`

- \"kernel dependency error\" [fix](https://github.com/arix00/openwrt-mx4300/blob/doc/snapshot-dependency-guide.md)" > $MD

cd ..
