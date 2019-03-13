# pip requires --> $ apt install python-pip (for py2.7) or $ apt install python3-pip (for py3.6)
# virtualenvwrapper requires --> $ pip install virtualenvwrapper --upgrade --user
export WORKON_HOME=~/.venvs
# future me: pip install virtualenvwrapper installs to $HOME/.local
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
source $(which virtualenvwrapper.sh)
export VISUAL="vim"

# homebrew hardening
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_INSECURE_REDIRECT=1

export LC_ALL="en_US.UTF-8"
export POWERLINE_CONFIG_COMMAND=$(which powerline-config)

export MSF_DATABASE_CONFIG=/opt/metasploit/config/database.yml

if [[ $(hostname) == 'vagrant' ]]; then
    export DEFAULT_USER='vagrant'
else
    export DEFAULT_USER='chrcoe'
fi
