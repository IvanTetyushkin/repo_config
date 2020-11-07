if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM='gnome-256color';
  elif infocmp xterm-256color >/dev/null 2>&1; then
      export TERM='xterm-256color';
fi;


# changing PATH
# Directories to be prepended to PATH
declare -a dirs_to_prepend=(
#    "$HOME/bin" # Ensure that this bin always takes precedence over `/usr/bin`
)

# Directories to be appended to PATH
declare -a dirs_to_append=(
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

unset(dirs_to_prepend)
unset(dirs_to_append)
export PATH

load_dotfiles() {
  declare -a files=(
  ~/repo_config/aliases.bash # add common aliases
  ~/repo_config/appearence.bash # appearence settings
  ~/.bashrc_local # local settings
  ~/repo_config/functions.bash  # functions
  ~/repo_config/exports.bash    # exports & defaults
  )

  # if these files are readable, source them
  for index in ${!files[*]}
  do
    if [[ -r ${files[$index]}]]; then
      source ${files[$index]}
    fi
  done
}

load_dotfiles
unset load_dotfiles

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
