# lazy-nvm

## Plugin

Initialises nvm lazily. Only calls it when `nvm`, `node`, `npm` or another node dependent command is run

## Usage

- Remove the init scripts for nvm from your .zshrc
- Copy the plugin directory to `~/.oh-my-zsh/custom/` to leave you with `~/.oh-my-zsh/custom/lazy-nvm/lazy-nvm.plugin.sh`
- Add `lazy-nvm` to your plugins array in `~/.zshrc`