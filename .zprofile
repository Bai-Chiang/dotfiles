# set PATH so it includes user's private bin it it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# If running from tty1 start Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    export GTK_THEME=Adwaita:dark
    export QT_QPA_PLATFORMTHEME=kde
    export QT_QPA_PLATFORM=wayland
    export RANGER_LOAD_DEFAULT_RC=false
    export XCURSOR_SIZE=24
    exec sway
    #exec Hyprland
fi
