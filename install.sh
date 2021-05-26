#!/bin/sh -e

dest=${1:-~/.local/share/fonts}

if [[ ! -d ${dest} ]]; then mkdir -p ${dest}; fi
cp ./waffles-mononoki.otf ${dest}

fc-cache ${dest} \
  || { echo "failed to update fontconfig cache"; exit 1; }

fc-list | grep mononoki \
  || { echo "installation failed, could not find font"; exit 1; }
