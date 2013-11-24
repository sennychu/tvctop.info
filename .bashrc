echo "loading .bashrc"

export PATH="$HOME/ruby/gems/bin:$HOME/.gem/ruby/1.9.3/bin:$HOME/perl5/bin$HOME/opt/bin:$HOME/opt/sbin:$HOME/bin:$HOME/sbin:$PATH"

export MANPATH="$HOME/opt/share/man:$MANPATH"
export PS1="\w | [\u@\H]: \n$"

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

. ~/.bash_prompt
. ~/.exports
. ~/.aliases
. ~/.functions
