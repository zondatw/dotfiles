# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# alias
alias ls="ls --color=auto"
alias ll="ls -al"
alias la="ls -A"
alias l="ls -CF"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias objdump="objdump -M intel"

alias treea="tree -a"

alias rm="trash-put"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/google-cloud-sdk/completion.bash.inc'; fi

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# tmux color 256
export TERM="xterm-256color"


# customerize PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033k\u@\h:\w\033\\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[01;33m\]\$(parse_git_branch)\[\033[01;35m\] \\$\[\033[00m\] "

