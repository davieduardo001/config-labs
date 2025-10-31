#!/bin/bash

# Clone and apply bash-config
git clone https://github.com/davieduardo001/bash-config.git /tmp/bash-config
cd /tmp/bash-config
chmod +x start.sh
./start.sh

# Clone and apply fastfetch-my-conf
git clone https://github.com/davieduardo001/fastfetch-my-conf.git /tmp/fastfetch-my-conf
cd /tmp/fastfetch-my-conf
chmod +x apply.sh
./apply.sh
