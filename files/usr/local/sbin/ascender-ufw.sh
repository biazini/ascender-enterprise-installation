#!/bin/bash
# Host firewall policy for the Ascender server (ufw). Rules for k3s follow https://docs.k3s.io/installation/requirements
set -euo pipefail
ADMIN_NET="${1:?usage: ascender-ufw.sh <ADMIN_NETWORK_CIDR>}"

ufw default deny incoming
ufw default allow outgoing
ufw allow from "$ADMIN_NET" to any port 22 proto tcp comment 'SSH administration'
# Note: ServiceLB publishes 80/443 through DNAT (FORWARD path), so these INPUT rules document intent only;
# restrict 80/tcp at the perimeter firewall if plain HTTP must not be reachable.
ufw allow 443/tcp comment 'Ascender HTTPS'
ufw allow from "$ADMIN_NET" to any port 6443 proto tcp comment 'k3s kube-apiserver'
ufw allow from 10.42.0.0/16 to any comment 'k3s pods'
ufw allow from 10.43.0.0/16 to any comment 'k3s services'
ufw --force enable
ufw status verbose
