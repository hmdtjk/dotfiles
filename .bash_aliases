#
# ~/.bash_aliases
#

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

vm () {
    virt-manager --connect qemu:///session --fork --show-domain-console $1 && \
        virsh --connect qemu:///session --quiet start $1
}
