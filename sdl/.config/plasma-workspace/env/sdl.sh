#!/bin/sh
export SDL_AUDIODRIVER=pipewire
if [[ $XDG_SESSION_TYPE == "wayland" ]]; then
  export SDL_VIDEODRIVER=wayland
fi
