### Exports

export TERM="xterm-256color"
export EDITOR="nvim"
export WIFI="wlp166s0"
export LANG="en_US.UTF-8"






# If not running interactively, don't do anything
[[ $- != *i* ]] && return


### PATH

if [ -d "$HOME/.bin" ] ;
    then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ];
    then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/applications" ];
    then PATH="$HOME/applications:$PATH"
fi



alias .1="cd .."

alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../.."



alias ls='exa -al --color=always --group-directories-first'







alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"


# Development
alias getkern="git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git"

# Networking
alias me="echo $(ifconfig $WIFI | grep "inet " | cut -b 9- | cut -d " " -f 2)"
alias myip="curl ipinfo.io/ip"
alias ports="netstat -tulpn"



alias chbackground="feh --randomize --bg-fill ~/wallpapers/*"
alias newpwn="cp ~/fitsec/ctf/pwntemplate.py .; mv ./pwntemplate.py"
alias newangr="cp ~/fitsec/ctf/angrtemplate.py .; mv ./angrtemplate.py"
alias rz="rizin"


eval "$(starship init bash)"
cd ~
