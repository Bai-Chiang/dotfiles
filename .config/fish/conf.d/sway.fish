# If running from tty1 start sway
set TTY1 (tty)
if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1 -a "$TTY1" = "/dev/tty1"
        set -x GTK_THEME Adwaita:dark
        set -x QT_QPA_PLATFORMTHEME kde
        set -x QT_QPA_PLATFORM wayland
        set -x XDG_SESSION_TYPE wayland
        set -x XDG_CURRENT_DESKTOP sway
        set -x XDG_SESSION_DESKTOP sway
        set -x LIBSEAT_BACKEND logind
        exec sway
    end
end

