export GOENV_ROOT="$HOME/.goenv"
command -v goenv >/dev/null || export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
# Let goenv manages $GOROOT and $GOPATH
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
