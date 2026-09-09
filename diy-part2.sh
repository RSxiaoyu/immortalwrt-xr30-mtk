#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# Set default IP to 192.168.1.1
sed -i 's/192.168.6.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# Set default theme to Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
