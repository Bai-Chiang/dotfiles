# If running from tty1 start sway
set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  set -x GTK_THEME Adwaita:dark
  set -x QT_QPA_PLATFORMTHEME kde
  # set -x WLR_NO_HARDWARE_CURSORS 1   # for nvidia driver
  set -x XDG_CURRENT_DESKTOP sway
  exec sway # --unsupported-gpu
end

