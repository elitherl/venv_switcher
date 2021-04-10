# completion.zsh

_venv_tab_complete() {
  local word completions
  word="$1"
  completions="$($VIRTUAL_ENV_DIR/venv_switcher/venv.sh --complete)"
  reply=( "${(ps:\n:)completions}" )
}

compctl -K _venv_tab_complete venv
