# lazy-rbenv

## Plugin

Initialises rbenv lazily. Only calls it when `rbenv`, `ruby`, `gem` or another ruby dependent command is run

## Usage

- Remove the init scripts for rbenv from your .zshrc
- Copy the plugin directory to `~/.oh-my-zsh/custom/` to leave you with `~/.oh-my-zsh/custom/lazy-rbenv/lazy-rbenv.plugin.sh`
- Add `lazy-rbenv` to your plugins array in `~/.zshrc`