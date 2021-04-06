#! /usr/bin/env bash
# Call as `source venv.sh`

GLOBALVENV="$HOME/venv"
VENV="$1"

function print_venvs {
  for DIRECTORY in ./*; do
    if [[ -f "$DIRECTORY/bin/activate" ]]; then
      echo "$DIRECTORY"
    fi
  done
  for DIRECTORY in "$GLOBALVENV"/*; do
    if [[ -f "$DIRECTORY/bin/activate" ]]; then
      basename "$DIRECTORY"
    fi
  done
}

function source_venv {
  if [[ -f "$VENV/bin/activate" ]]; then
    source "$VENV/bin/activate"
  elif [[ -f "$GLOBALVENV/$VENV/bin/activate" ]]; then
    source "$GLOBALVENV/$VENV/bin/activate"
  else
    echo "No venv found"
  fi
}

if [[ ! -n "$VENV" || "$VENV" == "--complete" ]]; then
  print_venvs
else
  source_venv
fi
