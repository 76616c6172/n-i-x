#!/bin/bash
set -e

nix profile upgrade '.*'
/home/valar/projects/n-i-x/save_new_manifest.sh "upgrade all packages" &>/dev/null
