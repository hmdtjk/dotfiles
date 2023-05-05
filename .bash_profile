#
# ~/.bash_profile
#

export MANPAGER="less -R --use-color -Dd+r -Du+b"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
      exec sway
fi
