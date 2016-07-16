# aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

source ~/.vim/plugged/gruvbox/gruvbox_256palette.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.z

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS

# vim mode
bindkey -v

# completion bullshit
zstyle :compinstall filename '/home/sebastian/.zshrc'
zstyle ':completion:*' menu select
setopt completealiases

autoload -Uz compinit promptinit
compinit
promptinit

#-------------------------------------------------------------
# File & strings related functions:
#-------------------------------------------------------------

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

ttyctl -f

source ~/.zpreztorc
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


zstyle ':completion:*' menu select

setopt completealiases

neofetch --ascii

[ -s "/home/sebastian/.dnx/dnvm/dnvm.sh" ] && . "/home/sebastian/.dnx/dnvm/dnvm.sh" # Load dnvm
source ~/.dnx/dnvm/dnvm.sh
source /usr/share/nvm/init-nvm.sh
