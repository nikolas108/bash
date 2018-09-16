alias a='cd /etc/asterisk/'
alias sip='vim /etc/asterisk/sip.conf'
alias exten='vim /etc/asterisk/extensions.conf'
alias rr='rasterisk -x "core reload"'
alias ar='service asterisk restart'
alias av='rasterisk -vvvvvvvvvvvvvvvvvvvvvvvvvv'
alias ipt='vim /etc/iptables/rules.v4'
alias iptr='iptables-restore < /etc/iptables/rules.v4'
alias iptl='iptables -L -nv'
alias o='cd /etc/openvpn/'
alias or='service openvpn restart'
alias inet='ip a | grep inet'
alias net='netstat -anptu | grep '
alias netl='netstat -anptu'
alias loga='cd /var/log/asterisk'
alias peers='asterisk -x "sip show peers"'
alias peer='asterisk -x "sip show peers" | grep '

status()
{
 VM=$1
 if [ ! -z $2 -a "$2" = "ls" ];then
	ssh $VM "ls /etc/openvpn/openvpn*"
 fi

 ssh $VM 'cat /etc/openvpn/openvpn-status*'
}
