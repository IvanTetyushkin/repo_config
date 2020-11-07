# Use Ctrl+A as the prefix key
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Use Vim shortcuts
setw -g mode-keys vi

# #start from 1
set -g base-index 1
set -g pane-base-index 1

# Highlight the active window in the status bar.
set-window-option -g window-status-current-bg yellow
set-window-option -g window-status-current-fg black

# Cycle panes.
bind b select-pane -t :.+
bind C-b select-pane -t :.+

