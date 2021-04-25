### REMOVE SHELL INITIAL MESSAGE ###
function fish_greeting
end

set TERM "xterm-256color"
set EDITOR "nvim"

### SET VIM KEYS AS DEFAULT ###
set fish_key_bindings fish_user_key_bindings

### PROMPT ###

### COLOR ###
set -g theme_color_scheme nord

### ALIAS ###
alias update='echo "START APT UPDATE" && sudo apt update && echo "START APT UPGRADE" && sudo apt upgrade -y && echo "START FLATPAK UPDATE" && flatpak update -y && echo "CONDA UPDATE" && conda update --all -y'
alias clean='echo "START APT AUTOCLEAN" && sudo apt autoclean && echo "START APT CLEAN" && sudo apt clean && echo "START APT AUTOREMOVE" && sudo apt autoremove'
alias pip_update="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# NVIM
alias vim='nvim'

# Docker alias
alias show_docker='docker images && echo && docker ps -a && echo && docker network ls'

# Other alias
alias git_tree="git log --graph --abbrev-commit --decorate --format=format:'%C(blue)%h%C(reset) %C(green)(%ar)%C(reset) %C(cyan)%ad%C(reset)%C(yellow)%d%C(reset) %C(white)%s%C(reset) %C(red)%an%C(reset)' --date=rfc --all"
set -U fish_user_paths ~/.anaconda/bin $fish_user_paths

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/madruga/.anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

