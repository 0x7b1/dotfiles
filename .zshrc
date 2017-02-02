# if not running interactively, don't do anything:
[[ $- != *i* ]] && return

# ZSH
export ZSH=/home/jc/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# z
. /home/jc/.linuxbrew/etc/profile.d/z.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go
# export GOROOT="/home/jc/.linuxbrew/Cellar/go/1.7.5/libexec"
export GOPATH=$HOME/Documents/code/go
export PATH=$GOPATH/bin:$PATH

# aliases
alias showifi='nmcli dev wifi'
alias sx='sxiv -t *'
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias glances='sudo docker run -v /var/run/docker.sock:/var/run/docker.sock:ro --pid host -it docker.io/nicolargo/glances'
