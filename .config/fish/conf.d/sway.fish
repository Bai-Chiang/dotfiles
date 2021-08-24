# If running from tty1 start sway
set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  # let kde application like dolphin show correct theme
  set -x DESKTOP_SESSION kde
  exec sway
end

