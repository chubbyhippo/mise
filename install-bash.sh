#!/usr/bin/env  bash
curl https://mise.run | sh
eval "$(~/.local/bin/mise activate bash)"
curl -s https://raw.githubusercontent.com/chubbyhippo/mise/main/mise.sh | /usr/bin/env sh

