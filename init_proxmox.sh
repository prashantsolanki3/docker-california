#!/bin/bash

cd /etc/apt/sources.list.d && mv pve-enterprise.list pve-enterprise.list.disabled && echo 'deb http://download.proxmox.com/debian/pve buster pve-no-subscription' > pve-community.list && apt -y update && apt -y dist-upgrade && apt -y install ifupdown2 git curl && git clone https://github.com/prashantsolanki3/docker-california ~/docker-california && cd ~/docker-california

