# export CHROME_BIN=/usr/bin/chromium-dev
# export CHROME_BIN=/usr/bin/chromium
export WORKON_HOME=~/.venvs
source $(which virtualenvwrapper.sh)
# source $HOME/.bash_profile
# source $HOME/.zsh_profile
export VISUAL="vim"

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml

if [[ $(hostname) == 'vagrant' ]]; then
    export DEFAULT_USER='vagrant'
else
    export DEFAULT_USER='chrcoe'
fi

source <(kubectl completion zsh)
