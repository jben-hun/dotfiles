## usage: ~/.bashrc <- [ -f ~/.shared.bashrc ] && source ~/.shared.bashrc

alias ls='ls -h --color=auto'
alias l=' ls -l'
alias ll='l -a'

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias tree='tree -C'

export TERMINAL=xfce4-terminal

export HISTCONTROL=ignoredups:erasedups:ignorespace
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTSIZE=50000
export HISTFILESIZE=100000

export GTK_CSD=0
LIBRARY="/usr/lib/libgtk-nocsd.so"
if [ -n "${LD_PRELOAD:-}" ]; then
    export LD_PRELOAD="$LIBRARY:$LD_PRELOAD"
else
    export LD_PRELOAD="$LIBRARY"
fi
