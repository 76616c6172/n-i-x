#!/bin/bash
set -e

NIX_OP="$1"
NEW_PACKAGE="$2"

cp -f /home/valar/.nix-profile/manifest.json /home/valar/projects/n-i-x/manifest.json
cd /home/valar/projects/n-i-x && git add "manifest.json" && git commit -m "$NIX_OP $NEW_PACKAGE" &>/dev/null
