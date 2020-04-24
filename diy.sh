#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate

mkdir -p package/openwrt-packages

git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages/
git clone https://github.com/But-Always/luci-app-koolproxyR.git package/openwrt-packages/luci-app-koolproxyR

# git clone https://github.com/vernesong/OpenClash.git package/openwrt-packages/luci-app-openclash



