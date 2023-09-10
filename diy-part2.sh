#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改openwrt登陆地址,把下面的 192.168.10.1 修改成你想要的就可以了
sed -i 's/192.168.100.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
sed -i 's/OpenWrt/NetGate/g' package/base-files/files/bin/config_generate

# ttyd 自动登录
# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${GITHUB_WORKSPACE}/openwrt/package/feeds/packages/ttyd/files/ttyd.config

# 添加自定义软件包
 echo '
 CONFIG_PACKAGE_luci-app-poweroff=y 
 CONFIG_PACKAGE_luci-i18n-poweroff-zh-cn=y 
 CONFIG_PACKAGE_luci-app-openclash=y 
 CONFIG_PACKAGE_kmod-inet-diag=y 
 CONFIG_PACKAGE_luci-app-aliyundrive-webdav=y 
 CONFIG_PACKAGE_luci-app-passwall2=y 
 CONFIG_PACKAGE_luci-app-passwall=y 
 CONFIG_PACKAGE_luci-app-passwall_Transparent_Proxy=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_IPv6_Nat=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Kcptun=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y 
 CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray_Plugin=y 
 CONFIG_PACKAGE_luci-app-ssr-plus=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NONE_V2RAY=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_V2ray=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Xray=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Kcptun=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Hysteria=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_IPT2Socks=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_NaiveProxy=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDEINCLUDE_Redsocks2=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Client=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_NONE_Server=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server=y  
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server=y 
 CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y 
 CONFIG_PACKAGE_luci-app-vssr=y 
 CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray=y 
 CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y 
 CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Kcptun=y 
 CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Xray_plugin=y 
 CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y 
 CONFIG_PACKAGE_luci-app-bypass=y 
 CONFIG_PACKAGE_luci-app-turboacc=y 
 CONFIG_PACKAGE_luci-app-adguardhome=y 
 CONFIG_PACKAGE_luci-app-mosdns=y 
 CONFIG_PACKAGE_luci-app-smartdns=y 
 ' >> .config
