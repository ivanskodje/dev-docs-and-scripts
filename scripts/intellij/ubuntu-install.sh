#!/bin/sh
# Install by running: ./ubuntu-install.sh

sudo snap install intellij-idea-ultimate --classic

cat >> ~/.bashrc << EOF
function idea() {
    /snap/bin/intellij-idea-ultimate "$1" > /dev/null 2>&1 &
}
EOF
source ~/.bashrc
