#!/bin/bash

cd "${0%/*}"

# Uncomment for audio fix if needed (other common value could be 200)
# export PULSE_LATENCY_MSEC=500

# Uncomment for NVIDIA settings https://runescape.wiki/w/Linux#NVIDIA
# export __GL_SHADER_DISK_CACHE_PATH=${HOME}/Jagex
# export __GL_THREADED_OPTIMIZATIONS='1'

export JX_ACCESS_TOKEN="${JX_ACCESS_TOKEN}"
export JX_CHARACTER_ID="${JX_CHARACTER_ID}"
export JX_DISPLAY_NAME="${JX_DISPLAY_NAME}"
export JX_REFRESH_TOKEN="${JX_REFRESH_TOKEN}"
export JX_SESSION_ID="${JX_SESSION_ID}"

/usr/bin/runescape-launcher
