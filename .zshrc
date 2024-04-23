eval "$(/opt/homebrew/bin/brew shellenv)"
if [ $TERM_PROGRAM != "Apple_Terminal" ]; then
  eval "$(starship init zsh)"
fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(direnv hook zsh)"
source ~/.alias
source ~/.private
