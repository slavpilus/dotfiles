# Personal collection of Dotfiles to be used with stow.

## Prerequesites

- stow installed
for mac with homebrew use:

```bash
brew install stow
```

## Gerneral installation

- navigate to repository location.
- execute `stow xxx` where `xxx` is name of one of the directories in the repo. This will create a symlink in the target location pointing to the repo. 
- check below for specific post installation steps I use zsh in iTerm2 so below is tailored to that setup.

## Starship 

add following to the bottom of `.zshrc`
```
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
```
