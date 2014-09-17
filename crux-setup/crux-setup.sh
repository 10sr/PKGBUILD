#!/bin/bash
set -e

# TODO: fetch dependency file and kernel

mirror=rsync://morpheus.net/crux

mkdir -p /tmp/crux-setup/core
mkdir -p /tmp/crux-setup/opt
mkdir -p /tmp/crux-setup/xorg
mkdir -p /tmp/crux-setup/kernel

rsync -av $mirror/loop/crux/core/ /tmp/crux-setup/core/

PATH=/usr/lib/crux-setup/bin:"$PATH" sudo /usr/lib/crux-setup/bin/iso_setup
