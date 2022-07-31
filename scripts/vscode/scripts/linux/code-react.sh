#!/bin/sh
# DO NOT RUN AS SUDO: It will add the alias to your root user, not your own!

CMD="code-react"
echo "alias $CMD='code --extensions-dir ~/vscode_profiles/$CMD/exts --user-data-dir ~/vscode_profiles/$CMD/data'" >> ~/.bashrc
source ~/.bashrc