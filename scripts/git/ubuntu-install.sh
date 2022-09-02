#!/bin/sh
# Install by running: ./ubuntu-install.sh
cat >> ~/.bashrc << EOF

alias gitp='git pull'
alias gits='git status'

gitch () {
  branchname=\${1}
  if [ ! -z "\$branchname" ]; then
    git checkout \$branchname
  else
    echo "Invalid command. Expected: gitch <branch name>"
  fi
}

gitchb () {
  branchname=\${1}
  if [ ! -z "\$branchname" ]; then
    git checkout -b \$branchname
  else
    echo "Invalid command. Expected: gitch <branch name>"
  fi
}

EOF
source ~/.bashrc
