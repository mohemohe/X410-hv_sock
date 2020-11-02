if [[ ! $DISPLAY && -S "/tmp/.X11-unix/X0" ]]; then
    if [[ $XDG_VTNR -eq 2 ]]; then
        exec /opt/bin/startx
    fi
fi
