#!/bin/bash
#

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin;
export PATH

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -X
iptables -Z
iptables -F -t nat
iptables -X -t nat
iptables -Z -t nat
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -p tcp -m multiport --dport 23:42 -j ACCEPT
iptables -A INPUT -p udp -m multiport --dport 23:42 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT
iptables -t nat -A PREROUTING -p udp -m multiport --dports 81:138 -j REDIRECT --to-ports 23
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 81:138 -j REDIRECT --to-ports 23
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 139:187 -j REDIRECT --to-ports 24
iptables -t nat -A PREROUTING -p udp -m multiport --dports 139:187 -j REDIRECT --to-ports 24
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 188:236 -j REDIRECT --to-ports 25
iptables -t nat -A PREROUTING -p udp -m multiport --dports 188:236 -j REDIRECT --to-ports 25
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 237:285 -j REDIRECT --to-ports 26
iptables -t nat -A PREROUTING -p udp -m multiport --dports 237:285 -j REDIRECT --to-ports 26
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 286:334 -j REDIRECT --to-ports 27
iptables -t nat -A PREROUTING -p udp -m multiport --dports 286:334 -j REDIRECT --to-ports 27
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 335:383 -j REDIRECT --to-ports 28
iptables -t nat -A PREROUTING -p udp -m multiport --dports 335:383 -j REDIRECT --to-ports 28
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 384:432 -j REDIRECT --to-ports 29
iptables -t nat -A PREROUTING -p udp -m multiport --dports 384:432 -j REDIRECT --to-ports 29
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 433:481 -j REDIRECT --to-ports 30
iptables -t nat -A PREROUTING -p udp -m multiport --dports 433:481 -j REDIRECT --to-ports 30
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 482:530 -j REDIRECT --to-ports 31
iptables -t nat -A PREROUTING -p udp -m multiport --dports 482:530 -j REDIRECT --to-ports 31
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 531:579 -j REDIRECT --to-ports 32
iptables -t nat -A PREROUTING -p udp -m multiport --dports 531:579 -j REDIRECT --to-ports 32
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 580:628 -j REDIRECT --to-ports 33
iptables -t nat -A PREROUTING -p udp -m multiport --dports 580:628 -j REDIRECT --to-ports 33
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 629:677 -j REDIRECT --to-ports 34
iptables -t nat -A PREROUTING -p udp -m multiport --dports 629:677 -j REDIRECT --to-ports 34
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 678:726 -j REDIRECT --to-ports 35
iptables -t nat -A PREROUTING -p udp -m multiport --dports 678:726 -j REDIRECT --to-ports 35
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 727:775 -j REDIRECT --to-ports 36
iptables -t nat -A PREROUTING -p udp -m multiport --dports 727:775 -j REDIRECT --to-ports 36
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 776:824 -j REDIRECT --to-ports 37
iptables -t nat -A PREROUTING -p udp -m multiport --dports 776:824 -j REDIRECT --to-ports 37
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 825:873 -j REDIRECT --to-ports 38
iptables -t nat -A PREROUTING -p udp -m multiport --dports 825:873 -j REDIRECT --to-ports 38
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 874:922 -j REDIRECT --to-ports 39
iptables -t nat -A PREROUTING -p udp -m multiport --dports 874:922 -j REDIRECT --to-ports 39
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 923:972 -j REDIRECT --to-ports 40
iptables -t nat -A PREROUTING -p udp -m multiport --dports 923:972 -j REDIRECT --to-ports 40
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 973:1000 -j REDIRECT --to-ports 41
iptables -t nat -A PREROUTING -p udp -m multiport --dports 973:1000 -j REDIRECT --to-ports 41
iptables -t nat -A PREROUTING -p tcp -m multiport --dports 1001:1023 -j REDIRECT --to-ports 42
iptables -t nat -A PREROUTING -p udp -m multiport --dports 1001:1023 -j REDIRECT --to-ports 42
iptables -P INPUT DROP
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
