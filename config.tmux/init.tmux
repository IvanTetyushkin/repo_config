# Use Ctrl+A as the prefix key
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# colors
white='#f8f8f2'
gray='#44475a'
dark_gray='#282a36'
light_purple='#bd93f9'
dark_purple='#6272a4'
cyan='#8be9fd'
green='#50fa7b'
orange='#ffb86c'
red='#ff5555'
pink='#ff79c6'
yellow='#f1fa8c'

# Use Vim shortcuts
setw -g mode-keys vi

# #start from 1
set -g base-index 1
set -g pane-base-index 1

# reorder windows
set -g renumber-windows on

setw -g mode-keys vi
# mouse support
setw -g mouse on
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
bind -n WheelDownPane select-pane -t= \; send-keys -M

set -g history-limit 10000
set editor vim
set set-clipboard external
#set -g default-command 'echo Hi there; bash'
# borders
set -g pane-border-lines single
set -g pane-border-indicators arrows
set -g pane-border-status top

# status bar
set -g status-left-length 100
set -g status-right-length 100
set -g status-position bottom
set -g pane-active-border-style "fg=${light_purple}"
set -g pane-border-style "fg=${gray}"
set -g message-style "bg=${gray},fg=${white}"
set -g status-style "bg=${gray},fg=${white}"
set -g status-left "#[bg=${green},fg=${dark_gray}] #W"

set-window-option -g window-status-current-format "#[fg=${white},bg=${dark_purple}] #I #W${current_flags} "
set-window-option -g window-status-format "#[fg=${white}]#[bg=${gray}] #I #W${flags}"
set-window-option -g window-status-activity-style "bold"
set-window-option -g window-status-bell-style "bold"

# Cycle panes.
bind b select-pane -t :.+
bind C-b select-pane -t :.+

# Send To Tmux Clipboard or System Clipboard
bind-key < run-shell "tmux set-buffer -- \"$(xsel -o -b)\"" \; display-message "Copy To Tmux Clipboard"
bind-key > run-shell 'tmux show-buffer | xsel -i -b' \; display-message "Copy To System Clipboard"

# some stuff to copy to system buffer
bind-key -T copy-mode-vi v send-keys -X begin-selection;
bind-key -T copy-mode-vi V send-keys -X select-line;
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle;
bind-key -T choice-mode-vi h send-keys -X tree-collapse ;
bind-key -T choice-mode-vi l send-keys -X tree-expand ;
bind-key -T choice-mode-vi H send-keys -X tree-collapse-all ;
bind-key -T choice-mode-vi L send-keys -X tree-expand-all ;
bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe "xclip -in -selection clipboard";
bind-key -T copy-mode-vi y send-keys -X copy-pipe "xclip -in -selection clipboard"
