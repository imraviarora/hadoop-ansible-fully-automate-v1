#!/bin/bash
sudo -s
echo ""test@123"" | passwd --stdin root
sed -i s/'PermitRootLogin no'/'PermitRootLogin yes'/g /etc/ssh/sshd_config
sed -i s/'PasswordAuthentication no'/'PasswordAuthentication yes'/g /etc/ssh/sshd_config
sed -i s/'ChallengeResponseAuthentication no'/'ChallengeResponseAuthentication yes'/g /etc/ssh/sshd_config
systemctl restart sshd
