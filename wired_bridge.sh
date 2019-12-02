ifconfig eth0 down
ifconfig eth1 down
ifconfig eth0 0.0.0.0 promisc up
ifconfig eth1 0.0.0.0 promisc up
brctl addbr br0
brctl addif br0 eth0 eth1
ifconfig br0 192.168.1.11 netmask 255.255.255.0 up
route add default gw 192.168.1.1 dev br0

