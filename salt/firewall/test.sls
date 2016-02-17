iptables-pkg:
 pkg.installed:
 - name: iptables

iptables-services:
 pkg.installed:
 - name: iptables

#iptables-running:
# service:
# - running
# - enable: True
 - name: iptables

firewalld:
 service:
 - dead
 - enable: False

bob:
  user.present:
    - fullname: James MacArthur
    - shell: /bin/bash
    - home: /home/bob
    - uid: 1002
    - gid: 1002
    - groups:
      - wheel
