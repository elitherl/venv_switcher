# completions.zsh

_venv_tab_complete() {
  local word completions
  word="$1"
  completions="$(venv --complete)"
  reply=( "${(ps:\n:)completions}" )
}

compctl -K _venv_tab_complete venv
