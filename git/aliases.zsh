###  # Use `hub` as our git wrapper:
###  #   http://defunkt.github.com/hub/
###  hub_path=$(which hub)
###  if (( $+commands[hub] ))
###  then
###    alias git=$hub_path
###  fi


# The rest of my fun git aliases
alias gfl='git fetch --prune && git pull --prune'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch -vv'
alias gst='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga='git add'
alias gaa='git add --all'
alias grm='git rm --cached'
alias gsyncmaster='git fetch upstream && git checkout master && git merge upstream/master'
alias gsyncdevelop='git fetch upstream && git checkout develop && git merge upstream/develop'
#alias gprunelocal="git branch --merged | grep -v master | grep -v staging >/tmp/merged-branches && vim /tmp/merged-branches && xargs -r git branch -d </tmp/merged-branches"
alias gprunelocal="git branch -vv | grep gone | cut -d ' ' -f3 > /tmp/branch-prune && vim /tmp/branch-prune && xargs -r git branch -D </tmp/branch-prune"
alias gfp='git fetch --prune && git pull --prune && gprunelocal'
