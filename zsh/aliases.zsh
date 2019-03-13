alias reload!='. ~/.zshrc'
alias open='xdg-open'
alias vim=nvim
alias vimdiff='nvim -d'
alias devbox!='. ~/.dotfiles/tmux/devbox'
alias tree='tree -Capug --dirsfirst'
alias greptodo="grep -RE 'TODO:|FIXME:|NOTE:|OPTIMIZE:|XXX:|REFACTOR:'"
#alias fixthetime="sudo systemctl stop ntp.service && sudo ntpd -gq && sudo systemctl start ntp.service"
alias fixthetime="sudo systemctl restart network.service && sudo systemctl stop ntpd.service && sudo ntpd -gq && sudo systemctl start ntpd.service"

alias ll="ls -alhi"
alias cleankernels="sudo package-cleanup --oldkernels --count=1"

alias fuc="cat $HOME/.fuc | grep -i"
alias startvm='VBoxManage startvm "devbox_centos7" --type headless'
alias stopvm='VBoxManage controlvm "devbox_centos7" poweroff --type headless'
alias listvm='VBoxManage list runningvms'
alias sshvm='ssh devbox-centos'
