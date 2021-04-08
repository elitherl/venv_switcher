# VENV switching scripts

Script to make switching virtual envs quick and easy

## Setup
- Ensure `venv.sh` is executable
- `source` appropriate `init.sh` script in startup script (e.g. `.basrh`, `.zshrc`, `.profile`, etc...)
  - Script will add alias `venv` to use `venv.sh`
  - Will setup the appropriate completion script based on current shell
