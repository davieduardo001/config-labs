#!/bin/bash

# Update bash-config
cd $HOME/configs/bash-config
git pull
./start.sh

# Update fastfetch-my-conf
cd $HOME/configs/fastfetch-my-conf
git pull
./apply.sh

# Update code-profiles
cd $HOME/configs/code-profiles
git pull
