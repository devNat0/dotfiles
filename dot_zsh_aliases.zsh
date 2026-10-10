# configs
alias zconf='$EDITOR ~/.zshrc'
alias zalias='$EDITOR ~/.zsh_aliases.zsh'

alias ls="eza"
alias cat='bat --style changes,numbers,snip'
alias tailstop="systemctl stop tailscaled.service"
alias lstty="ls /dev/tty*"

alias -s py=python

# https://wiki.archlinux.org/title/Rsync#As_cp/mv_alternative
cpr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 "$@"
}
mvr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files "$@"
}
