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

```bash
brew install fzf
```

## Misc utilities
```bash
brew install lazygit
```
