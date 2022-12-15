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

print_colors() {
    for x in {0..8}; do
        for i in {30..37}; do
            for a in {40..47}; do
                echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""
}

# customerize PS1
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

parse_license() {
    file_path="LICENSE"
    if [ ! -f "$file_path" ]; then
        return
    fi
    file_content="`cat $file_path | tr '\n' ' '`"
    license_map=( "Apache License 2.0:Apache License, Version 2.0"
                  "GPL v3.0:version 3 of the GNU General Public License"
                  "BSD 2-Clause:BSD 2-Clause License"
                  "BSD 3-Clause:BSD 3-Clause License"
                  "Boost Software 1.0:Boost Software License - Version 1.0"
                  "Creative Commons Zero v1.0:Creative Commons Legal Code"
                  "Eclipse Public 2.0:Eclipse Public License - v 2.0"
                  "Affero GPL v3.0:version 3 of the GNU Affero General Public License"
                  "GPL v2.0:General Public License as published by the Free Software Foundation; either version 2 of the License"
                  "GPL v2.0:GNU General Public License as published by     the Free Software Foundation; either version 2"
                  "Lesser GPL v2.1:GNU Library Public License, version 2, hence the version number 2.1"
                  "Mozilla Public 2.0:Mozilla Public License, v. 2.0"
                  "MIT:MIT License" )

    license_name="Unknown"
    for license_setting in "${license_map[@]}" ; do
        key="${license_setting%%:*}"
        value="${license_setting##*:}"
        if [[ "$file_content" == *"$value"* ]]; then
            license_name=$key
            break
        fi
    done
    printf "[%s]" "$license_name"
}

export PS1="\[\e[01;32m\]\u@\h\[\e[01;34m\] \w \[\e[01;35m\]\$(parse_license)\[\e[01;35m\]\[\e[01;33m\]\$(parse_git_branch)\[\e[1;30m\] \\$\[\e[00m\] "

