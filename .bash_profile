# vim etc
export PATH="/usr/local/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

#.bashrcが存在すれば読み込む
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

#fish
exec fish
