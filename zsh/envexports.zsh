export WORKON_HOME=~/.venvs
source $(which virtualenvwrapper.sh)
export VISUAL="vim"

export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml

if [[ $(hostname) == 'vagrant' ]]; then
    export DEFAULT_USER='vagrant'
else
    export DEFAULT_USER='chrcoe'
fi
