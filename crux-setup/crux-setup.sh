#!/bin/bash
set -e

mirror=rsync://morpheus.net/crux

mkdir -p /tmp/crux/core

rsync -av $mirror/loop/crux/core/ /tmp/crux/core/

exec /usr/lib/crux-setup/setup
