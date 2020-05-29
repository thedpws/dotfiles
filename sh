# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
# Set PATH
export PATH="$PATH:~/.development/flutter/bin"
export PATH="$PATH:/Applications/MATLAB_R2019b.app/bin"
export PATH="$PATH:/opt/local/bin"
export LINEUPS="~/Church/lineups"
export EMACS="/usr/local/bin/emacs"
alias n='vim .notes.md'
alias s='source ~/.bashrc'
alias ss='vim ~/.bashrc'
alias crunchyroll='open https://crunchyroll.com'
alias gcal='open https://calendar.google.com/calendar/r'
alias gmail='open https://mail.google.com/mail/u/0/#inbox'
alias l='clear'
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

# For copy-paste
alias c='xclip -selection c'
alias v='xclip -selection clipboard -o'

# for Z command
#. /usr/local/etc/profile.d/z.sh
export GOOGLE_APPLICATION_CREDENTIALS="/Users/azvasquez/Wordy-0bffa9f9aafc.json"

neofetch
export BASH_SILENCE_DEPRECATION_WARNING=1
#xmodmap ~/.xmodmap
alias vim="nvim"

export EDITOR='nvim'
export VISUAL='nvim'

alias airpods='bluetoothctl -- connect ac:90:85:ad:57:e0'
