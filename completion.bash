# completion.bash

_venv_tab_complete() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"
  local completions="$($VIRTUAL_ENV_DIR/scripts/venv.sh --complete)"
  COMPREPLY=( $(compgen -W "$completions" -- "$word")  )
}

complete -F _venv_tab_complete venv
