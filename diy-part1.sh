#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i "" 's/192.168.1.1/192.168.10.254/g' package/base-files/files/bin/config_generate

sed -i "" 's/^#\(.*helloworld\)/\1/' feeds.conf.default

mkdir -p package/openwrt-packages

git clone https://github.com/But-Always/luci-app-koolproxyR.git package/openwrt-packages/luci-app-koolproxyR

# Add a feed source
sed -i "" '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i "" '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i "" '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# git clone https://github.com/vernesong/OpenClash.git package/openwrt-packages/luci-app-openclash



