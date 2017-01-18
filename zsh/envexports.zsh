# export CHROME_BIN=/usr/bin/chromium-dev
# export CHROME_BIN=/usr/bin/chromium
export WORKON_HOME=~/.venvs
source $(which virtualenvwrapper.sh)
source $HOME/.bash_profile
export VISUAL="vim"

if [[ $(hostname) == 'vagrant' ]]; then
    export DEFAULT_USER='vagrant'
else
    export DEFAULT_USER='chrcoe'
fi

eval "$(rbenv init -)"
