#!/usr/bin/env bash

# Add direnv hook to zshrc.
# shellcheck disable=SC2016
echo 'eval "$(direnv hook zsh)"' >>"$HOME/.zshrc"
direnv allow .

gcloud auth login "$(dotenv get GOOGLE_CLOUD_ACCOUNT)"
gcloud config set project "$(dotenv get PROJECT_ID)"
gcloud config set compute/zone "$(dotenv get COMPUTE_ZONE)"
