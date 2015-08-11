# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh/site-functions/_git'
# completion="$HOME/.dotfiles/git/_git"

if test -f $completion
then
  echo $completion
  source $completion
fi
