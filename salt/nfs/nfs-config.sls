nfs-provision:
 file.managed:
 - name: /etc/exports
 - source: salt://files/centos/7/exports
