#
# ~/.bashrc
#

if [[ $- != *i* ]]; then
    return
fi

complete -c man
complete -cf sudo

shopt -s cdspell
shopt -s histappend
shopt -s checkwinsize
shopt -s no_empty_cmd_completion

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL="erasedups:ignoreboth"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ -f ~/.prompt_header ]; then
    . ~/.prompt_header
fi
