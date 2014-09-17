#!/bin/bash
set -e

mirror=rsync://morpheus.net/crux

mkdir -p /tmp/crux-setup/core
mkdir -p /tmp/crux-setup/opt
mkdir -p /tmp/crux-setup/xorg
mkdir -p /tmp/crux-setup/kernel

rsync -av $mirror/loop/crux/core/ /tmp/crux-setup/core/

exec /usr/lib/crux-setup/setup
