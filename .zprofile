# If running from tty1 start Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  export GTK_THEME=Adwaita:dark
  export QT_QPA_PLATFORMTHEME=kde
  #export WLR_NO_HARDWARE_CURSORS=1
  exec sway
  # --unsupported-gpu
fi
