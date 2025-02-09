# /etc/config/dhcp
uci del dhcp.lan.ra
uci del dhcp.lan.ra_slaac
uci del dhcp.lan.ra_flags
uci del dhcp.lan.max_preferred_lifetime
uci del dhcp.lan.max_valid_lifetime
# 关闭 DHCP 服务器
uci set dhcp.lan.ignore='1'
# /etc/config/network
# 将IPV4设置为19.168.3.10
uci set network.lan.ipaddr='192.168.3.10'
# 设置网关为 192.168.3.1
uci set network.lan.gateway='192.168.3.1'
# 设置 DNS
uci add_list network.lan.dns='192.168.3.1'
uci add_list network.lan.dns='114.114.114.114'
