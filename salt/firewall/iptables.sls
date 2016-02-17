iptables-package:
 pkg.installed:
 - name: iptables

iptables-services:
 pkg.installed:
 - name: iptables

#iptables-running:
# service:
# - running
# - enable: True
# - name: iptables

firewalld:
 service:
 - dead
 - enable: False

iptables-provision:
 file.managed:
 - name: /etc/sysconfig/iptables
 - source: salt://firewall/iptables.sls


