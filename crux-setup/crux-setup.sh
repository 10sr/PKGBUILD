#!/bin/bash
set -e

mirror=rsync://morpheus.net/crux

mkdir -p /tmp/crux-setup/core

rsync -av $mirror/loop/crux/core/ /tmp/crux-setup/core/

exec /usr/lib/crux-setup/setup
