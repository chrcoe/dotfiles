alias reload!='. ~/.zshrc'
alias open='xdg-open'
alias vim=nvim
alias vimdiff='nvim -d'
alias devbox!='. ~/.dotfiles/tmux/devbox'
alias tree='tree -Capug --dirsfirst'
alias greptodo="grep -RE 'TODO:|FIXME:|NOTE:|OPTIMIZE:|XXX:|REFACTOR:'"
alias fixthetime="sudo systemctl stop ntp.service && sudo ntpd -gq && sudo systemctl start ntp.service"
