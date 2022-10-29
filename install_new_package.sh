#!/bin/bash
set -e

# TODO: make sure package isn't already instaled! *

# --impure is seemingly needed to allow installing "unfree" packages
nix profile install "nixpkgs#$1" --impure
/home/valar/projects/n-i-x/save_new_manifest.sh "add $1"
