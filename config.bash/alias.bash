

# cd commands
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../.."


colorflag="--color=auto"
# List all files colorized in long format
alias ll="ls -l --file-type ${colorflag}"

# List all files colorized in long format, excluding . and ..
alias lla="ls -lA --file-type ${colorflag}"

#list all files colorized in short format, exluding . and ..
alias la="ls -A --file-type ${colorflag}"

# Order by last modified, long form no user group, color
alias lt="ls -toG"

alias grep="grep ${colorflag}"

# less command proper show
alias less="less -R"

# timing
alias week='date +%V'

# Exit command as nvm/vim...
alias :q="exit"

# tmux aliases
alias tmuxn="tmux new -s" # after need name
alias tmuxlist="tmux list-sessions"
alias tmuxattach=" tmux attach-session -t" # need number from tmuxlist
