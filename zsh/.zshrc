# Lines configured by zsh-newuser-install
HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lhc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function set_wayland_env
{
    cd ${HOME}

    export LANG=zh_CN.UTF-8 # 设置语言环境为中文

    export QT_AUTO_SCREEN_SCALE_FACTOR=1 # 解决QT程序缩放问题
    export QT_QPA_PLATFORM="wayland;xcb" # QT使用wayland和gtk
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    export QT_QPA_PLATFORMTHEME=qt5ct # 使用qt5ct软件配置QT程序外观

    export SDL_VIDEODRIVER=wayland # 一些游戏使用wayland
    export _JAVA_AWT_WM_NONEREPARENTING=1 # 解决java程序启动黑屏错误
    export GDK_BACKEND="wayland,x11" # GTK后端为 wayland和x11,优先wayland

    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx

}

 # function start_sway
 # {
 # set_wayland_env
 # export XDG_SESSION_TYPE=wayland
 # exec sway
 # # 
 # }
 # 

function start_hyprland
{
    set_wayland_env
    export XDG_SESSION_TYPE=wayland
    exec Hyprland

}
