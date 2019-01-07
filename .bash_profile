#pokemon
PATH=$HOME/.Pokemon-Terminal:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands
#vim etc
export PATH="/usr/local/bin:$PATH"
#rbenv
eval "$(rbenv init -)"
#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#aws cli
export PATH=~/.local/bin:$PATH

#.bashrcが存在すれば読み込む
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

#fish
exec fish
