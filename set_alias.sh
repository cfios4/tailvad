#!/bin/bash
cat <<EOF > /etc/bashrc
alias tailscale="docker exec tailvad tailscale"
alias wg="docker exec tailvad wg"
alias mullvad="curl https://am.i.mullvad.net/connected"
EOF