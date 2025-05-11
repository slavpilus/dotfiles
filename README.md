# Personal collection of Dotfiles to be used with stow.

## Prerequisites

- stow installed
for mac with homebrew use:

```bash
brew install stow
```

## General installation

- Navigate to repository location.
- Execute `stow xxx` where `xxx` is name of one of the directories in the repo. This will create a symlink in the target location pointing to the repo. 
- Check below for specific post installation steps I use zsh in iTerm2 so below is tailored to that setup.

## Starship

Add following to the bottom of `.zshrc`

```
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
```
## Nvim

Nvim configuration is lightly customized lazyvim starter project.

## fzf
Add the following to the `.zshrc`
```
source <(fzf --zsh)
```

## tmux

```
# clean up directories as tpm won't attempt to install if directories are empty
rm -rf ~/.config/tmux/plugins/tmux*
rm -rf ~/.config/tmux/plugins/vim-tmux-navigator
mkdir -p ~/.config/tmux/plugins/catppuccin
mkdir -p ~/.config/tmux/plugins/tpm
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```


## Misc utilities
```bash
brew install fzf
brew install fd
brew install ripgrep
brew install lazygit
brew install eza
brew install tmux
brew install --cask alt-tab
```
