nmtui : user interface for network management
nmcli : network(device(carte rsx,interface), connetion(connexion)) management (commands)

con->connection     |
                    | -> shortcuts(dual tabs)
dev->device         |

nmcli device status:
    ens33(centos) ethernet connected ens33
    lo            loopback connected lo

nmcli dev show:
    shows details(IPV4,...)

nmcli device disconnect/connect ens33:
    disconnecting/connecting network interface

nmcli connection show / con sh:
    show connections

nmcli connection add con-name tica
                     type ehternet
                     ifname ens33:
    create static connection

nmcli con up tica:
    activate connection(change network)

nmcli con mod tica ipv4.addresses 192.168.120.140/24
                   ipv4.gateway 192.168.120.1
                   ipv4.dns 192.168.120.1
    you should reconnect to show result by using nmcli con down tica, nmcli con up tica

#you can't delete an active connection

ps -ef:
    show background & forground processes (cached and not)
