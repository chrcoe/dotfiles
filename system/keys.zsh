# Pipe my public key to my clipboard.
alias pubkey="xclip -sel clip < ~/.ssh/euclid.pub | echo '=> Public key copied to clipboard.'"
#alias pubkey="more ~/.ssh/euclid.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
