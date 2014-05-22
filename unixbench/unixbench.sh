#!/bin/sh

# Run UnixBench
# This script is licensed under Public Domain

export UB_RESULTDIR="$HOME/.unixbench/reult"
mkdir -p "$UB_RESULTDIR"
export UB_TMPDIR="/tmp/unixbench/$$"
mkdir -p "$UB_TMPDIR"
cd /opt/unixbench && exec ./Run "$@"
