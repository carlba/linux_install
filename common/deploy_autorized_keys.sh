#!/bin/bash

mkdir -p $HOME/.ssh 
chmod -R 700 $HOME/.ssh

tee "$HOME/.ssh/authorized_keys" <<EOF > /dev/null
ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAABAQDOWRaRTPEkaa1McE6gpCHbJoke41FMsl/1O7Y0jzcB1bctOQp+KfzBf0GDEYN9/zfXcq5BcrUr5MR4VuTCglg/hOaOoLJtOz2a9vjMN6pAtGeWePuvedU7oi0O9ADej8oV0lZLDK0QbCvGJ93uK/bqvxlOmZ3ejNb2TTvBmOh4YmdRSKyoW6axKX51+kp3+LawS7p+ky2SsADaJdfesnA7kwIfthqj5F3m23S9DKBbkBBPEBuxA6IKifBCk2838I5IqRUh3foZqJDduCes1yB6mE6BcK2yaNgQsboPdJXcN8WSTqssxmSyUtBNP5kas8MJ9X2HL/FPlrlOaL1F4FGP
cada@cadathink
EOF

chmod 600 $HOME/.ssh/authorized_keys
