export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.config
export LANG=en_US.UTF-8

# enable ribbon in libreoffice
export LO_USE_NOTEBOOKBAR=1

export NNTPSERVER='snews://news.eternal-september.org:563'
export PANEL_FIFO=/tmp/panel-fifo
export EDITOR=vim
export BROWSER=firefox

if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi
