echo "loading .bash_profile...."

PS1="\u@\h \W"
set -vx
# file protection
umask 002 # all to me, read to group and others



# Load the shell dotfiles
. ~/.path
. ~/.bash_prompt
. ~/.exports
. ~/.aliases
. ~/.functions
. ~/.extra

if [ -r ~/.profile ]; then . ~/.profile; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

# Keyboard, bell, display style: the readline config file:
if [ −z "$INPUTRC" −a ! −f "$HOME/.inputrc" ]; then
INPUTRC=/etc/inputrc
fi

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
