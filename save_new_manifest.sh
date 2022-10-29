#!/bin/bash
#
cp /home/valar/.nix-profile/manifest.json /home/valar/vulpix/manifest.json
cd /home/valar/vulpix/ && git commit -u -m "$(date)" &>/dev/null
