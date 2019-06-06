# Defer initialization of nvm until rbenv, gem or a ruby-dependent command is
# run. Ensure this block is only run once if .zshrc gets sourced multiple times
# by checking whether __init_nvm is a function.

if [ -s "$HOME/.rbenv/shims/ruby" ] && [ ! $(typeset -f i__init_rbenv 2>/dev/null | grep -q 'function') ]; then

  declare -a __ruby_commands=('rbenv')
  declare -a __ruby_shims=($(ls $HOME/.rbenv/shims/))
  function __init_rbenv() {
    for i in "${__ruby_commands[@]}"; do unalias $i; done
    for i in "${__ruby_shims[@]}"; do unalias $i; done
    eval "$(rbenv init -)"
    unset __ruby_commands
    unset __ruby_shims
    unset -f __init_rbenv
  }
  
  for i in "${__ruby_commands[@]}"; do alias $i='__init_rbenv && '$i; done
  for i in "${__ruby_shims[@]}"; do alias $i='__init_rbenv && '$i; done
  
fi
