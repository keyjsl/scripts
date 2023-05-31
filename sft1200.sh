# Remove some net packages
rm -rf ./feeds/packages/net/https-dns-proxy
rm -rf ./feeds/packages/net/kcptun
rm -rf ./feeds/packages/net/shadowsocks-libev
rm -rf ./feeds/packages/net/xray-core
rm -rf ./feeds/packages/net/brook
rm -rf ./feeds/packages/net/chinadns-ng
rm -rf ./feeds/packages/net/hysteria
rm -rf ./feeds/packages/net/ssocks
rm -rf ./feeds/packages/net/trojan
rm -rf ./feeds/packages/net/trojan-go
rm -rf ./feeds/packages/net/trojan-plus
rm -rf ./feeds/packages/net/sagernet-core
rm -rf ./feeds/packages/net/naiveproxy
rm -rf ./feeds/packages/net/shadowsocks-rust
rm -rf ./feeds/packages/net/shadowsocksr-libev
rm -rf ./feeds/packages/net/simple-obfs
rm -rf ./feeds/packages/net/tcping
rm -rf ./feeds/packages/net/v2ray-core
rm -rf ./feeds/packages/net/v2ray-geodata
rm -rf ./feeds/packages/net/v2ray-plugin
rm -rf ./feeds/packages/net/v2raya
rm -rf ./feeds/packages/net/xray-core
rm -rf ./feeds/packages/net/xray-plugin
rm -rf ./feeds/packages/net/dns2socks
rm -rf ./feeds/packages/net/microsocks
rm -rf ./feeds/packages/net/ipt2socks
rm -rf ./feeds/packages/net/pdnsd-alt
rm -rf ./feeds/packages/net/redsocks2
rm -rf ./feeds/luci/applications/luci-app-passwall

# Dependencies
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/brook feeds/packages/net/brook
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng feeds/packages/net/chinadns-ng
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/dns2tcp feeds/packages/net/dns2tcp
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria feeds/packages/net/hysteria
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks feeds/packages/net/ssocks
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/sing-box feeds/packages/net/sing-box
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go feeds/packages/net/trojan-go
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus feeds/packages/net/trojan-plus
svn export https://github.com/xiaorouji/openwrt-passwall/trunk/sagernet-core feeds/packages/net/sagernet-core
svn export https://github.com/fw876/helloworld/trunk/naiveproxy feeds/packages/net/naiveproxy
svn export https://github.com/immortalwrt/packages/trunk/net/shadowsocks-libev feeds/packages/net/shadowsocks-libev
svn export https://github.com/fw876/helloworld/trunk/shadowsocks-rust feeds/packages/net/shadowsocks-rust
svn export https://github.com/fw876/helloworld/trunk/shadowsocksr-libev feeds/packages/net/shadowsocksr-libev
svn export https://github.com/fw876/helloworld/trunk/simple-obfs feeds/packages/net/simple-obfs
svn export https://github.com/fw876/helloworld/trunk/tcping feeds/packages/net/tcping
svn export https://github.com/fw876/helloworld/trunk/trojan feeds/packages/net/trojan
svn export https://github.com/fw876/helloworld/trunk/v2ray-core feeds/packages/net/v2ray-core
svn export https://github.com/fw876/helloworld/trunk/v2ray-geodata feeds/packages/net/v2ray-geodata
svn export https://github.com/fw876/helloworld/trunk/v2ray-plugin feeds/packages/net/v2ray-plugin
svn export https://github.com/fw876/helloworld/trunk/v2raya feeds/packages/net/v2raya
svn export https://github.com/keyjsl/openwrt-passwall/branches/wss-multipath/xray-core feeds/packages/net/xray-core
svn export https://github.com/fw876/helloworld/trunk/xray-plugin feeds/packages/net/xray-plugin
svn export https://github.com/fw876/helloworld/trunk/lua-neturl feeds/packages/net/lua-neturl
svn export https://github.com/immortalwrt/packages/trunk/net/dns2socks feeds/packages/net/dns2socks
svn export https://github.com/immortalwrt/packages/trunk/net/microsocks feeds/packages/net/microsocks
svn export https://github.com/keyjsl/packages/trunk/net/ipt2socks feeds/packages/net/ipt2socks
svn export https://github.com/immortalwrt/packages/trunk/net/pdnsd-alt feeds/packages/net/pdnsd-alt
svn export https://github.com/immortalwrt/packages/trunk/net/redsocks2 feeds/packages/net/redsocks2
svn export https://github.com/immortalwrt/packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
svn export https://github.com/immortalwrt/packages/trunk/net/kcptun feeds/packages/net/kcptun
svn export https://github.com/coolsnowwolf/lede/trunk/package/lean/shortcut-fe package/kernel/shortcut-fe
svn export https://github.com/immortalwrt/packages/trunk/net/dnsforwarder feeds/packages/net/dnsforwarder

# luci-app-passwall
svn export https://github.com/keyjsl/openwrt-passwall/branches/luci-nodns-xtls/luci-app-passwall feeds/luci/applications/luci-app-passwall

# Change "Allow connection to 65535"
sed -i 's/16384/65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# Update and Install Feeds
./scripts/feeds update -a
./scripts/feeds install -a -f
