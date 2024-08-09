eval "$(/opt/homebrew/bin/brew shellenv)"
if [ $TERM_PROGRAM != "Apple_Terminal" ]; then
  eval "$(starship init zsh)"
fi
# Partial completion for zsh
autoload -Uz compinit
compinit
# Ensure LANG for tmux icons
export LANG=en_US.utf8

source "$HOME/.profile"
add-zsh-hook chpwd load-nvmrc

source "$HOME"/.alias
source "$HOME"/.private
export PATH=/Users/jacoswarts/.meteor:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH=$HOME/.meteor:$PATH

if [ -z "$TMUX" ]; then
    tmux
fi
