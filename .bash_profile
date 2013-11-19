# echo "loading .bash_profile...."

PATH=$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$HOME/{sbin,bin}:$PATH
export PATH

# Load the shell dotfiles
#if [ -r ~/.path ]; then . ~/.path; fi
if [ -r ~/.bash_prompt ]; then . ~/.bash_prompt; fi
#if [ -r ~/.exports ]; then . ~/.exports; fi
#if [ -r ~/.aliases ]; then . ~/.aliases; fi
#if [ -r ~/.functions ]; then . ~/.functions; fi
#if [ -r ~/.extra ]; then . ~/.extra; fi

if [ -r ~/.profile ]; then . ~/.profile; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac




## Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

ulimit -s unlimited