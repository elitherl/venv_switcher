# Python virtual environment switching script

Script to make switching virtual envs quick and easy

## Setup
- Ensure `venv.sh` is executable
- `source` appropriate `init.sh` script in startup script (e.g. `.basrh`, `.zshrc`, `.profile`, etc...)
  - Script will add alias `venv` to use `venv.sh`
  - Will setup the appropriate completion script based on current shell

## Usage
- `venv` is an alias for `source /path/to/venv.sh`
- `venv` or `venv --complete` will list available virtual environments under current directory and under `$VIRTUAL_ENV_DIR` (setup by `init.sh` if not defined beforehand)
  - Here `venv` is interchangeable with `/path/to/venv.sh`
- `venv {virtual env name}` will call `source /path/to/env/bin/activate`
- `venv <Tab>` will tab complete environments listed by `venv --complete`
