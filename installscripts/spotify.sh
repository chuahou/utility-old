#!/bin/bash
#
# Installs Spotify.
#
# Run as ROOT.

# check for root
../scripts/check_root.sh root || exit 1

# install Spotify
snap install spotify
