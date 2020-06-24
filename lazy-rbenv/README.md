# lazy-rbenv

## Plugin

Initialises rbenv lazily. Only calls it when `rbenv`, `ruby`, `gem` or another ruby dependent command is run

## Usage

- Remove the init scripts for rbenv from your .zshrc
- Copy the plugin directory to `~/.oh-my-zsh/custom/plugins` to leave you with `~/.oh-my-zsh/custom/plugins/lazy-rbenv/lazy-rbenv.plugin.zsh`
- Add `lazy-rbenv` to your plugins array in `~/.zshrc`

You can modify the array of commands that will trigger this script to run if you find something that requires ruby and isn't set properly
