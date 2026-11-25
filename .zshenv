# Load nvm for every zsh, including non-interactive and script shells.
#
# ~/.zshrc only runs for interactive shells, so commands spawned by daemons
# (for example the no-mistakes pipeline service) had no node or pnpm on PATH.
# This selects the newest installed Node, which is the one that carries the
# global pnpm shim; interactive shells still honour a project's .nvmrc on
# directory change through the load-nvmrc hook in .zshrc.
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  \. "$NVM_DIR/nvm.sh" >/dev/null 2>&1
  if ! command -v node >/dev/null 2>&1; then
    nvm use --silent node >/dev/null 2>&1
  fi
fi
