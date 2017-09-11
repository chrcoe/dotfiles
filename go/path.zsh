export GOPATH=$PROJECTS/go
# need to exist before the path can be altered
mkdir -p $GOPATH/bin
mkdir -p $GOPATH/src/github.com
export PATH="$GOPATH/bin:$PATH"
