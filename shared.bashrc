## usage: ~/.bashrc <- [ -f ~/.shared.bashrc ] && source ~/.shared.bashrc

# (unset BROWSER && xdg-settings set default-web-browser firefox.desktop)
# xdg-mime default firefox.desktop x-scheme-handler/http x-scheme-handler/https text/html
# xdg-mime default pcmanfm.desktop inode/directory
# xdg-mime default imv-dir.desktop image/jpeg image/png image/gif image/svg+xml image/webp image/bmp image/tiff
# xdg-mime default celluloid.desktop video/mp4 video/x-matroska video/webm video/quicktime video/x-flv video/3gpp audio/mpeg audio/ogg audio/mp4 audio/x-wav
# xdg-mime default zed.desktop text/plain text/markdown text/x-python text/x-shellscript text/javascript text/css application/json application/xml

eval "$(zoxide init bash)"
eval "$(starship init bash)"
# eval "$(fzf --bash)"
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

c() {
    if command -v ncal >/dev/null 2>&1; then
        command ncal -b -M "$@"
    else
        command cal -m "$@"
    fi
}

adhd() {
    local log="$HOME/dhda.csv"
    local timestamp intent exit_point

    printf '\n'

    [[ -f $log ]] && tail -n 6 -- "$log" | awk -F '","' '
        NR == 1 { next }

        {
            sub(/^"/, "", $1)
            sub(/"$/, "", $3)

            for (i = 1; i <= 3; i++) {
                gsub(/""/, "\"", $i)
            }

            printf "%s: %s, %s\n", $1, $2, $3
        }
    '

    printf '\n'

    LC_TIME=C c

    timestamp=$(LC_TIME=C date '+%Y-%m-%d %a %H:%M:%S')
    printf '\n%s\n\n' "$timestamp"

    read -r -e -p "Intent: " intent || return
    read -r -e -p "Exit: " exit_point || return

    intent=${intent//\"/\"\"}
    exit_point=${exit_point//\"/\"\"}

    {
        [[ -s $log ]] || printf 'timestamp,intent,exit\n'
        printf '"%s","%s","%s"\n' \
            "$timestamp" "$intent" "$exit_point"
    } >> "$log"
}

alias ls='ls -h --color=auto'
alias l=' ls -l'
alias ll='l -a'

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias tree='tree -C'
alias t='tree'
alias tt='tree -a'

alias mc='MC_SKIN=modarin256-defbg . /usr/lib/mc/mc-wrapper.sh'
alias sudomc='sudo -E bash -c "MC_SKIN=modarin256root-defbg . /usr/lib/mc/mc-wrapper.sh"'

export TERMINAL=foot
export EDITOR=nano
export VISUAL=nano

export HISTCONTROL=ignoredups:erasedups:ignorespace
shopt -s histappend
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTSIZE=50000
export HISTFILESIZE=100000

# export GTK_CSD=0
# xfconf-query -c xsettings -p /Gtk/DialogsUseHeader -s false
# xfconf-query -c xsettings -p /Gtk/DecorationLayout -r
# LIBRARY="/usr/lib/libgtk-nocsd.so"
# if [ -f "$LIBRARY" ]; then
#     if [ -n "${LD_PRELOAD:-}" ]; then
#         export LD_PRELOAD="$LIBRARY:$LD_PRELOAD"
#     else
#         export LD_PRELOAD="$LIBRARY"
#     fi
# fi
