# Neovim

nconf() {
  local config_dir=$HOME/.config/nvim
  local plugins_dir=$config_dir/lua/plugins
  local file="init.lua"

  if [[ $1 == "ls" ]]; then
    ls $plugins_dir
    return
  fi

  if (( $# == 1 )); then
    config_dir=$plugins_dir
    file="${1}.lua"
  fi
  (cd $config_dir; nvim "${file}")
}

alias vi=nvim
alias vif='nvim $(fzf -m --preview="batcat --color=always {}")'
