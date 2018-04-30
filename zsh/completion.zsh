# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# requires awscli --> $ pip install awscli --upgrade --user
source $(which aws_zsh_completer.sh)
