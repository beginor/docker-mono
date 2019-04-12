#!/usr/bin/env bash
### every exit != 0 fails the script
set -e
apt-get update
apt-get install -y --no-install-recommends gnupg apt-transport-https dirmngr
# add mono in vs channel
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian vs-stretch main" | tee /etc/apt/sources.list.d/mono-official-vs.list
# update & upgrade
apt-get update && apt-get upgrade -y
# install mono
apt-get install -y --no-install-recommends mono-devel
# cleanup
apt-get remove -y gnupg apt-transport-https dirmngr
apt-get autoremove -y
rm -rf /var/lib/apt/lists/*
