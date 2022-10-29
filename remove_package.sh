#!/bin/bash
set -e

nix profile remove "legacyPackages.x86_64-linux.$1"
/home/valar/projects/n-i-x/save_new_manifest.sh "remove $1"
