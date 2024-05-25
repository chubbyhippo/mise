#!/usr/bin/env  sh
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
eval "$(~/.local/bin/mise activate bash)"
curl -s https://raw.githubusercontent.com/chubbyhippo/mise/main/mise.sh | /usr/bin/env sh

