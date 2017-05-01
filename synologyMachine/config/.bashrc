########################
# Add this to your user and root .bashrc:
# user directory:  /volume1/homes/<userName>
# root directory:  /root
########################

# AUTOCOLOR
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# MODIFIED COMMANDS
alias ..='cd ..'
alias df='df -h'
alias diff='colordiff'              # requires colordiff package
alias du='du -c -h'
alias free='free -m'                # show sizes in MB
alias grep='grep --color=auto'
alias grep='grep --color=tty -d skip'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'


# LS
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -alh'
alias la='ll -A'


# DOCKER
alias dd='docker'
alias dc='docker-compose'


# PROMPT
PS1='\n\u@\h:\w\n'
case `id -u` in
	0) PS1="${PS1}# ";;
	*) PS1="${PS1}$ ";;
esac