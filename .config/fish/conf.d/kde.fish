# If running from tty2 start sway
set TTY2 (tty)
if test -z "$DISPLAY"; and test $TTY2 = "/dev/tty2"
    XDG_SESSION_TYPE=wayland startplasma-wayland
end

