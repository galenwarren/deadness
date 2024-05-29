#!/usr/bin/env bash
set -euo pipefail

SCRIPT_FOLDER=$(dirname "$0")
ROOT_PATH="$SCRIPT_FOLDER/.."

# apply cors settings
gcloud storage buckets update gs://croquet-deadness-board --cors-file="$ROOT_PATH/receiver/config/cors.json"

# copy files
gcloud storage cp "$ROOT_PATH/receiver/public/*" gs://croquet-deadness-board

# build the frontend
(
  cd "$ROOT_PATH/frontend";
  flutter clean;
  flutter build web;
)

# deploy firebase
firebase use deadness-84106
firebase deploy
