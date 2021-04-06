# completions.bash

_venv_tab_complete() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"
  local completions="$(venv --complete)"

  COMPREPLY=( $(compgen -W "$completions" -- "$word")  )
  return 0
}

complete -F _venv_tab_complete venv
