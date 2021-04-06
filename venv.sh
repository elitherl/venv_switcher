#! /usr/bin/env bash
# Call as `source venv.sh`

VENV="$1"

function print_venvs {
  for DIRECTORY in ./*; do
    if [[ -f "$DIRECTORY/bin/activate" ]]; then
      echo "$DIRECTORY"
    fi
  done
  for DIRECTORY in "$VIRTUAL_ENV_DIR"/*; do
    if [[ -f "$DIRECTORY/bin/activate" ]]; then
      basename "$DIRECTORY"
    fi
  done
}

function source_venv {
  if [[ -f "$VENV/bin/activate" ]]; then
    source "$VENV/bin/activate"
  elif [[ -f "$VIRTUAL_ENV_DIR/$VENV/bin/activate" ]]; then
    source "$VIRTUAL_ENV_DIR/$VENV/bin/activate"
  else
    echo "No venv found"
  fi
}

if [[ ! -n "$VIRTUAL_ENV_DIR" ]]; then
  VIRTUAL_ENV_DIR="$HOME/venv"
fi

if [[ ! -n "$VENV" || "$VENV" == "--complete" ]]; then
  print_venvs
else
  source_venv
fi
