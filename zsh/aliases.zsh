alias reload!='. ~/.zshrc'
alias open='xdg-open'
alias vim=nvim
alias view='nvim -R'
alias vimdiff='nvim -d'
alias vimsplit='nvim -O'
alias devbox!='. ~/.dotfiles/tmux/devbox'
alias tree='tree -Capug --dirsfirst'
alias greptodo="grep -RE 'TODO:|FIXME:|NOTE:|OPTIMIZE:|XXX:|REFACTOR:'"
#alias fixthetime="sudo systemctl stop ntp.service && sudo ntpd -gq && sudo systemctl start ntp.service"
alias fixthetime="sudo systemctl restart network.service && sudo systemctl stop ntpd.service && sudo ntpd -gq && sudo systemctl start ntpd.service"
alias fixthetime-ubuntu="sudo netplan apply && sudo systemctl restart systemd-timesyncd"

alias ll="ls -alhi"
alias cleankernels="sudo package-cleanup --oldkernels --count=1"

alias fuc="cat $HOME/.fuc | grep -i"
alias startvm='VBoxManage startvm "devbox" --type headless'
alias stopvm='VBoxManage controlvm "devbox" poweroff --type headless'
alias listvm='VBoxManage list runningvms'
alias sshvm='ssh devbox'
