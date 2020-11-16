# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Change tmux folder
export TMUX_TMPDIR="/home/$USER/.local/tmuxsessions"

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM='gnome-256color';
  elif infocmp xterm-256color >/dev/null 2>&1; then
      export TERM='xterm-256color';
fi;
