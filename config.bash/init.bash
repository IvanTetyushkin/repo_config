if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM='gnome-256color';
  elif infocmp xterm-256color >/dev/null 2>&1; then
      export TERM='xterm-256color';
fi;


load_dotfiles() {
  bashdir="$HOME/repo_config/config.bash"
  declare -a files=(
  $bashdir/alias.bash # add common aliases
  $bashdir/appearence.bash # appearence settings
  $bashdir/functions.bash  # functions
  $bashdir/export.bash    # exports & defaults
  ~/.config/local.bash
  )
  # if these files are readable, source them
  for index in ${!files[*]}
  do
    source ${files[$index]}
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
  fi;
fi;
