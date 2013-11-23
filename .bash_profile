echo "loading .bash_profile...."

#set -vx
# file protection
umask 022 # all to me, read to group and others

PATH=$HOME/opt/bin:$HOMEoptsbin:/home7/tvctopin/.linuxbrew/bin:$PATH
export PATH

export ACLOCAL_PATH=/home7/tvctopin/opt/share/aclocal
export LD_LIBRARY_PATH=$HOME/opt/lib:/home7/tvctopin/.linuxbrew/lib
export PKG_CONFIG_PATH=/home7/tvctopin/opt/lib/pkgconfig:/home7/tvctopin/.linuxbrew/lib/pkgconfig

export HOMEBREW_NO_EMOJI='1'
export HOMEBREW_DEVELOPER='1'

export HOMEBREW_TEMP=/home7/tvctopin/var/tmp
export HOMEBREW_CACHE=/home7/tvctopin/.linuxbrew/Library/Caches/Homebrew

# Add Homebrew completions and homebrew sourced completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
# option do
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi

# Load the shell dotfiles
. ~/.path
. ~/.bash_prompt
. ~/.exports
. ~/.aliases
. ~/.functions
. ~/.extra

# if [ -r ~/.profile ]; then . ~/.profile; fi
# case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac

# Keyboard, bell, display style: the readline config file:
if [ −z "$INPUTRC" −a ! −f "$HOME/.inputrc" ]; then INPUTRC=/etc/inputrc; fi

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
