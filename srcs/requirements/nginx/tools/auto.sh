#!/bin/bash

#---------------------------------------------------zsh---------------------------------------------------#
chsh -s $(which zsh)
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
echo "alias zshi='sh /install.sh'" >> ~/.zshrc

#---------------------------------------------------nginx start---------------------------------------------------#

exec "$@"