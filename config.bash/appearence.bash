## Custom prompt

tput sgr0; # reset colors
bold=$(tput bold);
reset=$(tput sgr0);
# Solarized colors, taken from http://git.io/solarized-colors.
black=$(tput setaf 0);
blue=$(tput setaf 33);
cyan=$(tput setaf 37);
green=$(tput setaf 64);
orange=$(tput setaf 166);
purple=$(tput setaf 125);
red=$(tput setaf 124);
violet=$(tput setaf 61);
white=$(tput setaf 15);
yellow=$(tput setaf 136);

# Highlight the user name
# when logged in as root.
if [[ "${USER}" == "root"]]; then
  userStyle="${red}";
else
  userStyle="${orange}";
fi;

# Highlight the hostname
# when connected via
# SSH.
if [[ "${SSH_TTY}" ]]; then
  hostStyle="${bold}${red}";
else
  hostStyle="${yellow}";
fi;

LOCAL_PLAT="";
LOCAL_VAR="";
export LOCAL_PLAT
export LOCAL_VAR
# Set the terminal
# title and prompt.
PS1="";
#PS1="\[\033]0;\W\007\]";
# working directory
# base name
PS1+="${bold}\n"; #newline
PS1+="${userStyle}\u";# username
PS1+="${white} at ";
PS1+="${hostStyle}\h:${purple}\$LOCAL_PLAT";
# host
PS1+="${white} info";
PS1+="${cyan}"
PS1+="\$LOCAL_VAR"
PS1+="${white} path";
PS1+="${green}\w"; #working directory full path
PS1+="\n";
PS1+="\[${white}\]\[\$\]\[${reset}\]"; # `$`(and reset color)
export PS1;
PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
