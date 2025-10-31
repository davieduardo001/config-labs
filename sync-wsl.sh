#!/bin/bash

# Clone and apply bash-config
git clone https://github.com/davieduardo001/bash-config.git $HOME/configs/bash-config
cd $HOME/configs/bash-config
chmod +x start.sh
./start.sh

# Clone and apply fastfetch-my-conf
git clone https://github.com/davieduardo001/fastfetch-my-conf.git $HOME/configs/fastfetch-my-conf
cd $HOME/configs/fastfetch-my-conf
chmod +x apply.sh
./apply.sh
