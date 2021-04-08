# completion.zsh

_venv_tab_complete() {
  local word completions
  word="$1"
  completions="$(venv --complete)"
  reply=( "${(ps:\n:)completions}" )
}

compctl -f -K _venv_tab_complete venv
