
# ~/.bashrc
alias kex='vncserver-start'
alias kill='vncserver-stop'
# Alias definitions
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# If you want color output for 'ls'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

PS1='\[\e[1;92m\]┌──[\[\e[0;91m\]\u㉿\h\[\e[1;92m\]]-[\[\e[0;0m\]\w\[\e[1;92m\]]
\[\e[1;92m\]└─\[\e[0;94m\]# \[\e[0;0m\] '
# User specific aliases and functions
