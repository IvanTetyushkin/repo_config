# changing PATH
# Directories to be prepended to PATH
declare  dirs_to_prepend=(
    "$HOME/install/bin",
   "$HOME/install/share/clang" 
)

# Directories to be appended to PATH
declare  dirs_to_append=(
#    "/usr/bin"
)

# Prepend directories to PATH
for index in ${!dirs_to_prepend[*]}
do
  if [ -d ${dirs_to_prepend[$index]} ]; then
    # If these directories exist, then prepend them to existing PATH
    PATH="${dirs_to_prepend[$index]}:$PATH"
  fi
done

# Append directories to PATH
for index in ${!dirs_to_append[*]}
do
  if [ -d ${dirs_to_append[$index]} ]; then
    # If these bins exist, then append
    # them to existing PATH
    PATH="$PATH:${dirs_to_append[$index]}"
  fi
done

unset dirs_to_prepend
unset dirs_to_append
export PATH

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
