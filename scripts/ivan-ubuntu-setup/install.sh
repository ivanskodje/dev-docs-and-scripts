# Install Everything

sudo apt update
sudo apt upgrade -y

## Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb

## General Tools
sudo snap install vlc
sudo snap install notepadqq
sudo snap install notion-snap
sudo apt install font-manager -y

## Communication
sudo snap install slack --classic

## Development Tools
sudo apt install maven -y
sudo apt install git -y
sudo apt install nodejs -y
sudo snap install postman
sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic

### Java 17
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-17-jdk -y

### Creative/Streaming Tools
sudo snap install obs-studio # Recording/Streaming
sudo snap install krita # Image Editing
sudo snap install audacity # Audio editing
sudo snap install audacious # Music player 

### Securty (for creating encrypted drives/files)
sudo add-apt-repository ppa:unit193/encryption
sudo apt update
sudo apt install veracrypt -y



## Docker
### Prerequisites
sudo apt-get install ca-certificates curl gnupg lsb-release

### Add repository key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

### Installing Docker
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER

### Installing Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



# Config Setup
## Remember git login
git config --global credential.helper store

## Ubuntu tweaking
sudo apt install gnome-tweaks -y

## Allows you to use extensions.gnome.org to easily enable/disable extensions
sudo apt install chrome-gnome-shell -y

### Blur my Shell: https://extensions.gnome.org/extension/3193/blur-my-shell/
### Compiz windows effect: https://extensions.gnome.org/extension/3210/compiz-windows-effect/


# Setting up shortcuts and aliases

cat >> ~/.bashrc << EOF

# IntelliJ
function idea() {
    /snap/bin/intellij-idea-ultimate "\$1" > /dev/null 2>&1 &
}

# git
alias gitp='git pull'
alias gits='git status'
alias gitch='git checkout'
alias gitchb='git checkout -b'

# Visual Studio Code
alias code-python='code --extensions-dir ~/vscode_profiles/code-python/exts --user-data-dir ~/vscode_profiles/code-python/data'
alias code-react='code --extensions-dir ~/vscode_profiles/code-react/exts --user-data-dir ~/vscode_profiles/code-react/data'

# Google Chrome (chrome <URL> : open URL detached)
function chrome() {
        google-chrome "\$1" < /dev/null > /dev/null 2>&1 & disown
}

EOF
source ~/.bashrc

## Install fonts (by adding .fonts folder in home directory)
cp fonts ~/.fonts -r