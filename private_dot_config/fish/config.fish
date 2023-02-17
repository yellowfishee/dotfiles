#if status is-interactive
# Commands to run in interactive sessions can go here
#end
neofetch

# ~/.config/fish/config.fish


export PATH="/home/yellowfish/.local/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"

# 修复conda下面的问题
set -x TERMINFO /usr/share/terminfo


alias n=neofetch
alias bty="sh ~/.config/fish/sh/bty.sh"
alias provpn='export all_proxy=http://127.0.0.1:7890'
alias bqt="sh ~/.config/fish/sh/bqt.sh"
alias stx=' ssh -i ~/.ssh/01.pem ubuntu@myip'
alias sfx=' sftp -i ~/.ssh/01.pem ubuntu@myip'

alias aliyun=' /home/charles/.local/bin/aliyundrive-webdav  --refresh-token="mytocken" --port=8080  --auth-user=myuser --auth-password=mypswd'
alias bypm="sh ~/.config/fish/sh/bypm.sh"
alias pw=poweroff
alias boffice="sh ~/.config/fish/sh/boffice.sh"
alias rb=reboot
alias bkate="sh ~/.config/fish/sh/bkate.sh"
alias bcode="sh ~/.config/fish/sh/bcode.sh"
alias vpn="expressvpn connect"
alias dvpn="expressvpn disconnect"
alias ls="lsd"
alias c="clear"
alias cn="clear;n"
alias du="dust"
alias e="exa --icons"
alias vi3="nvim ~/.config/i3/config"
alias top="gotop"
alias ys="yay -S"

# starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

