#!/bin/bash

# Update and install required packages
sudo apt update
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl git libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install pyenv
curl https://pyenv.run | bash

# Add pyenv to bashrc to make it available in the current shell
echo -e '\n# Pyenv configuration' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Reload bashrc
source ~/.bashrc

# Install Python 3.10.0
pyenv install 3.10.0

# Set Python 3.10.0 as the global default version
pyenv global 3.10.0

# Verify Python version
echo python version: $(python --version)
