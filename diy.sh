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

git clone https://github.com/brokeld/luci-app-koolproxyR.git package/openwrt-packages/luci-app-koolproxyR

# echo "export ALL_PROXY=\"socks5://192.168.10.222:1061\"" >> ~/.bashrc
# echo "export all_proxy=\"socks5://192.168.10.222:1061\"" >> ~/.bashrc
# sudo tee -a /etc/apt/apt.conf <<< 'Acquire::http::Proxy "http://192.168.10.222:1041";' > /dev/null
# sudo tee -a /etc/apt/apt.conf <<< 'Acquire::https::Proxy "http://192.168.10.222:1041";' > /dev/null
# source ~/.bashrc