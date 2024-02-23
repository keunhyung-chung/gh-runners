#!/usr/bin/env bash

# Add direnv hook to zshrc.
# shellcheck disable=SC2016
echo 'eval "$(direnv hook zsh)"' >>"$HOME/.zshrc"
direnv allow .