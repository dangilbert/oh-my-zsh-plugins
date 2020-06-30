# lazy-nvm

## Plugin

Initialises nvm lazily. Only calls it when `nvm`, `node`, `npm` or another node dependent command is run

## Usage

- Remove the init scripts for nvm from your .zshrc
- Copy the plugin directory to `~/.oh-my-zsh/custom/plugins` to leave you with `~/.oh-my-zsh/custom/plugins/lazy-nvm/lazy-nvm.plugin.zsh`
- Add `export LAZY_NODE_COMMANDS="my|commands|here"` to your `~/.zshrc` for any extra commands you want to trigger the node init (`|` separated string)
- Add `lazy-nvm` to your plugins array in `~/.zshrc`

You can modify the array of commands that will trigger this script to run if you find something that requires node and isn't set properly
