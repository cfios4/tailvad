#!/bin/bash
cat <<EOF >> ~/.bashrc
alias tailscale="docker exec tailvad tailscale"
alias wg="docker exec tailvad wg"
alias mullvad="curl https://am.i.mullvad.net/connected"
EOF
echo "--------------------"
echo "-                   -"
echo "-   Restart shell   -"
echo "-    for aliases    -"
echo "-                   -"
echo "--------------------"
