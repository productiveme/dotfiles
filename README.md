# .dotfiles

This repository contains my configuration files. It helps me configure my Mac to get productive fast.

## Requirements

The following tools are required to get the best out of this configuration. `install.sh` installs the essentials; run `brew bundle` (or `FULL_BREW_BUNDLE=1 bash install.sh`) to install everything listed in the [Brewfile](./Brewfile).

| Name                                                       | Install Command                                |
| ---------------------------------------------------------- | ---------------------------------------------- |
| [Homebrew](https://brew.sh/)                               | `/bin/bash -c "$(curl -fsSL ...)"`             |
| [direnv](https://direnv.net/)                              | `brew install direnv`                          |
| [ripgrep](https://github.com/BurntSushi/ripgrep)           | `brew install ripgrep`                         |
| [tmux](https://github.com/tmux/tmux)                       | `brew install tmux`                            |
| [NeoVIM](https://neovim.io/)                               | `brew install neovim`                          |
| [universal ctags](https://github.com/universal-ctags/ctags) | `brew install universal-ctags`                 |
| [starship](https://starship.rs)                            | `brew install starship`                        |
| [gh](https://github.com/cli/cli)                           | `brew install gh`                              |
| [OpenCode](https://opencode.ai)                            | `npm install -g opencode-ai`                   |
| [codegraph](https://github.com/colbymchenry/codegraph)     | `pnpm add -g @colbymchenry/codegraph`          |
| NodeJS                                                     | `brew install nvm` (or the nvm install script) |
| Python 3.13+                                               | `brew install pyenv` <br/> `pyenv install 3.13.12` <br/> `pyenv global 3.13.12` |
| Ruby 3+                                                    | `brew install rbenv` <br/> `rbenv install 3.4.4` <br/> `rbenv global 3.4.4` |

## Setup

1. Clone this repo to your home folder (as `~/dotfiles`, not `~/.dotfiles`)

```bash
git clone git@github.com:productiveme/dotfiles.git ~/dotfiles
```

2. Run the install script from within the `dotfiles` folder

```bash
(cd ~/dotfiles && bash install.sh)
```

The install script will automatically:
- Install Git with XCode command line tools (if not already installed)
- Install Homebrew (if not already installed)
- Install NodeJS with nvm (if not already installed)
- Install Python 3.13+ with pyenv (required for Neovim Mason tools like black and pylint)
- Install tree-sitter CLI (required for Neovim syntax highlighting)
- Install OpenCode CLI, pnpm and the codegraph MCP server
- Create symlinks to configuration files
- Restore the iTerm2 profile

For full machine parity, also install everything in the Brewfile:

```bash
(cd ~/dotfiles && FULL_BREW_BUNDLE=1 bash install.sh)
# or
(cd ~/dotfiles && brew bundle)
```

## What gets linked

Directory-level symlinks into `~/dotfiles`:

| Path                     | Contents                             |
| ------------------------ | ------------------------------------ |
| `~/.alias`               | aliases and shell functions          |
| `~/.bashrc`, `~/.zshrc`  | shell config                         |
| `~/.profile`             | shared shell env                     |
| `~/.gitconfig`           | git aliases, identity, LFS filters   |
| `~/.gitignore_global`    | global git ignores                   |
| `~/.config/nvim`         | Neovim config                        |
| `~/.config/tmux`         | tmux config                          |
| `~/.config/ghostty`      | Ghostty terminal config              |
| `~/.config/git`          | git ignore defaults                  |
| `~/.config/opencode`     | OpenCode config, CLI settings, skills |
| `~/.config/starship.toml`| starship prompt                      |

File-level symlinks (so the parent directory can keep machine-local state):

| Path                     | Contents                          |
| ------------------------ | --------------------------------- |
| `~/.ssh/config`          | ssh host config (no keys)         |
| `~/.config/gh/config.yml`| `gh` preferences (no auth token)  |

## Secrets

These are deliberately **not** tracked (see `.gitignore`) and are recreated per machine:

- `~/.config/opencode/service.json` — local service password
- `~/.config/gh/hosts.yml` — GitHub OAuth token
- `~/.config/raycast/config.json` — Raycast access token
- `~/.npmrc` — npm auth token
- `~/.ssh/id_*`, `~/.ssh/*_rsa`, `~/.ssh/agent/` — private keys

Secrets that a config needs at runtime are read from the environment, e.g. `LINEAR_API_KEY`
and `FIGMA_API_KEY` in `~/.config/opencode/opencode.json`.

## Notes

- `~/.private` is sourced by `.zshrc` and is intentionally empty and untracked. Use it for
  machine-specific secrets or `PATH` additions.
- `cli.json` holds OpenCode V2 terminal settings (theme, keybinds). `tui.json` is the older
  V1 equivalent and is kept only for compatibility.
