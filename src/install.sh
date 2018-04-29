#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
# add mono in vs channel
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/ubuntu vs-xenial main" | tee /etc/apt/sources.list.d/mono-official-vs.list
# update & upgrade
apt-get update && apt-get upgrade -y
# install mono
apt-get install -y --no-install-recommends mono-devel
# cleanup
apt-get autoremove
rm -rf /var/lib/apt/lists/*
