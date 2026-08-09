if status is-interactive

end
starship init fish | source
colorscript random
set -U fish_greeting ""
zoxide init fish | source
alias install="sudo dnf5 install"
alias update="sudo dnf5 update"
alias remove="sudo dnf5 remove"
alias commit='git commit -m'
alias push='git push -u origin'
alias edit='sudo -E micro'
set fzf_fd_opts --hidden --max-depth 5
export EDITOR=micro
