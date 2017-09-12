export WORKON_HOME=~/.venvs
source $(which virtualenvwrapper.sh)
export VISUAL="vim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml

if [[ $(hostname) == 'vagrant' ]]; then
    export DEFAULT_USER='vagrant'
else
    export DEFAULT_USER='chrcoe'
fi

source <(kubectl completion zsh)
