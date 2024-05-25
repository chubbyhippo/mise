#!/usr/bin/env  bash
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
source ~/.bashrc
curl -s https://raw.githubusercontent.com/chubbyhippo/mise/main/mise.sh | /usr/bin/env sh

