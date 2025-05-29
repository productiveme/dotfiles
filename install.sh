#!/usr/bin/env bash
echo "This script will reset your dotfiles and overwrite any custom settings."
echo "Only run this from within the dotfiles folder. Current folder is $(pwd)."
echo "Press Ctrl-C to cancel or Enter to continue..."
read -sr

mkdir -p "$HOME/.config"
dotfiles=".alias .bashrc .gitconfig .config/starship.toml .config/nvim .config/tmux .config/ghostty .profile .zshrc"

#==============
# Remove old dot flies
#==============
for dotfile in $dotfiles; do
  sudo rm -rf "$HOME"/"$dotfile" > /dev/null 2>&1
done
#==============
# Create symdotfiles in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
SYMLINKS=()
for dotfile in $dotfiles; do
  ln -sf "$(pwd)"/"$dotfile" "$HOME"/"$dotfile"
  SYMLINKS+=("$dotfile")
done

echo "${SYMLINKS[@]}"

touch $HOME/.private

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh

#==============
# Restore iTerm profile
#==============
cp -f "$(pwd)/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
