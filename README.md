# .dotfiles

This repository contains my configuraion files. It helps me configure my Mac to get productive fast.

## Install dependencies

The following tools are required to get the best out of this configuration.

- [ Git ](https://git-scm.com/) (included in XCode Command Line Tools)
  ```bash
  xcode-select --install
  git --version
  ```
- [Node](https://nodejs.org/en/) through [Node Version Manager](https://github.com/nvm-sh/nvm)
  ```bash
  PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'
  ```
- [Homebrew](https://brew.sh)
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- [direnv](https://direnv.net/)
  ```bash
  brew install direnv
  ```
- [ripgrep](https://github.com/BurntSushi/ripgrep)
  ```bash
  brew install ripgrep
  ```
- [ ITerm2 ](https://iterm2.com/)  
  A true color terminal with support for ligatures.
  ```bash
  brew install iterm2
  ```
- [ tmux ](https://github.com/tmux/tmux)
  ```bash
  brew install tmux
  ```
- [ NeoVIM ](https://neovim.io/)
  ```bash
  brew install neovim
  ```
- [ starship ](https://starship.rs)
  ```bash
  brew install starship
  ```
- [ gh ](https://github.com/cli/cli)
  ```bash
  brew install gh
  ```
- [ git removed-branches ](https://github.com/nemisj/git-removed-branches)
  ```bash
  npm install -g git-removed-branches
  ```
- [ Install a Nerd font and set it in your terminal](https://www.nerdfonts.com/font-downloads)  
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
