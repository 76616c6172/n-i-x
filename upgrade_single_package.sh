#!/bin/bash
set -e

PACKAGE_NAME="legacyPackages.x86_64-linux.$1"
nix profile upgrade "$PACKAGE_NAME"
/home/valar/projects/n-i-x/save_new_manifest.sh "upgrade $1"
