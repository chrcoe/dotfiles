# none yet - go ahead and add some as needed !

alias docker_clean="docker rmi $(docker images | grep "^<none>" | awk "{print $3}")"
alias docker_clean_containers="docker rm $(docker ps -a -q)"
