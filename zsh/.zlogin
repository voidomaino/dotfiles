#export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec Hyprland

