load_dotfiles() {
  bashdir="$HOME/repo_config/config.bash"
  declare -a files=(
  $bashdir/alias.bash      # add common aliases
  $bashdir/appearence.bash # appearence settings
  $bashdir/functions.bash  # mine functions
  $bashdir/export.bash     # exports & defaults
  $bashdir/common.bash     # every additional plugins (not mine)
  ~/.config/local.bash
  )
  for index in ${!files[*]}
  do
    source ${files[$index]}
  done
}

load_dotfiles
unset load_dotfiles

