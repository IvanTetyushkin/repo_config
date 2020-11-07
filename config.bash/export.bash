# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Check the window size after each command and, if necessary, update the
# values
# of LINES and COLUMNS.
#shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Change tmux folder
export TMUX_TMPDIR="/home/$USER/.local/tmuxsessions"
