set -g default-terminal "screen-256color"

set -g status-bg green
set -g status-fg black


# remap prefix from 'C-b' to 'C-f'
# Ctrl - f is prefix
unbind C-b
set -g prefix C-f
bind-key C-f send-prefix

# X - kills session
bind X kill-session

# r - reload config
bind r source-file ~/.tmux.conf \; display '~/.tmux.conf sourced'

# ] - split horizontal
bind ] split-window -v
bind [ split-window -h

# pane navigation
bind -r h select-pane -L  # move left
bind -r j select-pane -D  # move down
bind -r k select-pane -U  # move up
bind -r l select-pane -R  # move right
bind > swap-pane -D       # swap current pane with the next one
bind < swap-pane -U       # swap current pane with the previous one



# DISPLAY
set -g base-index 1           # start windows numbering at 1
setw -g pane-base-index 1     # make pane numbering consistent with windows

setw -g automatic-rename on   # rename window to reflect current program
set -g renumber-windows on    # renumber windows when a window is closed

set -g set-titles on          # set terminal title

set -g display-panes-time 800 # slightly longer pane indicators display time
set -g display-time 1000      # slightly longer status messages display time

set -g status-interval 10     # redraw status line every 10 seconds

# Set inactive/active window styles
#set inactive/active window styles
#set -g window-style 'fg=white,bg=black'
#set -g window-active-style 'fg=white,bg=black'
# set the pane border colors 

#or if you a brighter active border, uncomment the following line:
##set -g pane-active-border-bg colour51
set -g mouse on

