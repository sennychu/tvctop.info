echo "loading .bash_profile...."

PATH=$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$HOME/bin:$HOME/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export PATH
#export LD_LIBRARY_PATH=/home7/tvctopin/.linuxbrew/lib
#export HOMEBREW_TEMP=/home7/tvctopin/var/tmp
#export HOMEBREW_CACHE=/home7/tvctopin/.linuxbrew/Library/Caches/Homebrew
export HOMEBREW_NO_EMOJI='1'
export HOMEBREW_DEVELOPER='1'

# Load the shell dotfiles
. ~/.path
. ~/.bash_prompt
. ~/.exports
. ~/.aliases
. ~/.functions
. ~/.extra

if [ -r ~/.profile ]; then . ~/.profile; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell