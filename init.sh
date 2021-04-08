# Setup venv.sh and completions based on current shell

if [[ ! -n "$VIRTUAL_ENV_DIR" ]]; then
  export VIRTUAL_ENV_DIR="$(dirname $(dirname $(realpath ${BASH_SOURCE[0]})))"
fi

if [[ -n "$BASH_VERSION" ]]; then
  source "$(dirname "${BASH_SOURCE[0]}")/completion.bash"

elif [[ -n "$ZSH_VERSION" ]]; then
  source "$(dirname "$0")/completion.zsh"

fi
