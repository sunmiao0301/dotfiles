# User specific aliases and functions
# -i flag is to pormpt before overwrite
# -F is to add * after executable files, / after the directory
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias la='ls -alF'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# with this "export HISTCONTROL=ignorespace"
# if you dont wanne see some command in your history commend list
# just add a space before that command
export HISTCONTROL=ignorespace

# prompt string one
PS1='\[\e[32;1m\][\[\e[33;1m\]\u\[\e[31;1m\]@\[\e[33;1m\]\h \[\e[36;1m\]\w\[\e[32;1m\]]\[\e[34;1m\]\$ \[\e[0m\] ’

