eval "$(/opt/homebrew/bin/brew shellenv)"
chmod -R go-w "$(brew --prefix)/share"

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
export PATH=$HOME/.meteor:$PATH

# Auto run and attach tmux
if [ -z "$TMUX" ]; then
    if tmux has-session 2>/dev/null; then
        tmux attach
    else
        tmux
    fi
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/.meteor:$PATH

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"

