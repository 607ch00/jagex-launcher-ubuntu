#!/bin/bash

cd "${0%/*}"

export PULSE_LATENCY_MSEC=200
export PULSE_PROP_OVERRIDE="application.name='RuneScape' application.icon_name='runescape' media.role='game'"
export __GL_SHADER_DISK_CACHE_PATH=${HOME}/'Jagex'
export __GL_THREADED_OPTIMIZATIONS='1'
export SDL_VIDEO_X11_WMCLASS="RuneScape"

# Jagex Launcher Auth
export JX_ACCESS_TOKEN="${JX_ACCESS_TOKEN}"
export JX_CHARACTER_ID="${JX_CHARACTER_ID}"
export JX_DISPLAY_NAME="${JX_DISPLAY_NAME}"
export JX_REFRESH_TOKEN="${JX_REFRESH_TOKEN}"
export JX_SESSION_ID="${JX_SESSION_ID}"

configURI=https://www.runescape.com/k=5/l=\$\(Language:0\)/jav_config.ws

# Some older graphics drivers may require this to be uncommented, but it will restrict the available graphics settings and performance.
#export MESA_GL_VERSION_OVERRIDE=3.0

unset XMODIFIERS

/usr/share/games/runescape-launcher/runescape --configURI $configURI $@
