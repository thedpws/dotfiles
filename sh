# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
  PS1="$ "
else
  PS1="$ "
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="$ "
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Set PATH
export PATH="$PATH:~/.development/flutter/bin"
export PATH="$PATH:/Applications/MATLAB_R2019b.app/bin"
export PATH="$PATH:/opt/local/bin"
export LINEUPS="~/Church/lineups"
export EMACS="/usr/local/bin/emacs"
alias n='vim .notes.md'
alias s='source ~/.bash_profile'
alias ss='vim ~/.bash_profile'
alias cflogin='cf login -a https://api.paas.mia.ulti.io -o techstar-bootcamp -s dev-aeyzechiahv -u aeyzechiahv'
alias crunchyroll='open https://crunchyroll.com'
alias gcal='open https://calendar.google.com/calendar/r'
alias gmail='open https://mail.google.com/mail/u/0/#inbox'
alias jira='open https://ultidev/secure/RapidBoard.jspa?rapidView=1740'
alias l='clear'
alias plantronics='SwitchAudioSource -s Plantronics\ BT600 && echo "Switched audio to Plantronics BT600" && say --interactive --voice=Fred --rate=60 My roflcopter goes soi soi soi soi soi soi soi soi'
alias s='source ~/.bash_profile && echo "Sourced ~/.bash_profile"'
alias ss='vim ~/.bash_profile'
alias youtube='open https://youtube.com'
alias ~='cd ~'
alias ports='cat ~/Docs/ports'
alias github='hub'
alias restart='brew services restart'
function checktemp(){
  osx-cpu-temp
  sleep 10
  checktemp
}

# for Z command
. /usr/local/etc/profile.d/z.sh
export GOOGLE_APPLICATION_CREDENTIALS="/Users/azvasquez/Wordy-0bffa9f9aafc.json"
alias sshautograder='ssh azvasquez@10.227.132.82'
alias sftpautograder='sftp azvasquez@10.227.132.82'
neofetch
export BASH_SILENCE_DEPRECATION_WARNING=1
xmodmap ~/.xmodmap
