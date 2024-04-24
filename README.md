# .dotfiles

This repository contains my configuraion files. It helps me configure my Mac to get productive fast.

## Requirements

The following tools are required to get the best out of this configuration.

| Name                                                                       | Install Command                                                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| [Git](https://git-scm.com/) with XCode command line tools                  | `xcode-select --install`                                                                                       |
| [NodeJS](https://nodejs.org/en/) with [nvm](https://github.com/nvm-sh/nvm) | `PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh \| bash'` |
| [Homebrew](https://brew.sh)                                                | `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`              |
| [direnv](https://direnv.net/)                                              | `brew install direnv`                                                                                          |
| [ripgrep](https://github.com/BurntSushi/ripgrep)                           | `brew install ripgrep`                                                                                         |
| [ITerm2](https://iterm2.com/)                                              | `brew install iterm2`                                                                                          |
| [tmux](https://github.com/tmux/tmux)                                       | `brew install tmux`                                                                                            |
| [NeoVIM](https://neovim.io/)                                               | `brew install neovim`                                                                                          |
| [starship](https://starship.rs)                                            | `brew install starship`                                                                                        |
| [gh](https://github.com/cli/cli)                                           | `brew install gh`                                                                                              |
| [git removed-branches](https://github.com/nemisj/git-removed-branches)     | `npm install -g git-removed-branches`                                                                          |

- [Install a Nerd font and set it in your terminal](https://www.nerdfonts.com/font-downloads)  
  E.g. FiraCode Nerd Font

## Setup

1. Install the dependencies above.
2. Clone this repo to your home folder

```bash
git clone git@github.com:productiveme/dotfiles.git ~/.dotfiles
```

3. Run the install script from within the `.dotfiles` folder

```bash
(cd ~/.dotfiles && bash install.sh)
```
