# Setup venv.sh and completions based on current shell

if [[ -n "$BASH_VERSION" ]]; then
  if [[ ! -n "$VIRTUAL_ENV_DIR" ]]; then
    export VIRTUAL_ENV_DIR="$(dirname $(dirname $(realpath ${BASH_SOURCE[0]})))"
  fi
  source "$(dirname "${BASH_SOURCE[0]}")/completion.bash"

elif [[ -n "$ZSH_VERSION" ]]; then
  if [[ ! -n "$VIRTUAL_ENV_DIR" ]]; then
    export VIRTUAL_ENV_DIR="${0:a:h:h}"
  fi
  source "${0:a:h}/completion.zsh"

fi
