#!/usr/bin/env bash
set -euo pipefail

SCRIPT_FOLDER=$(dirname "$0")
ROOT_PATH="$SCRIPT_FOLDER/.."

# apply cors settings
gcloud storage buckets update gs://croquet-deadness-board --cors-file="$ROOT_PATH/receiver/config/cors.json"

# copy files
rm -rf "$ROOT_PATH/receiver/staging"
mkdir -p "$ROOT_PATH/receiver/staging"
cp "$ROOT_PATH/receiver/public/receiver.html" "$ROOT_PATH/receiver/staging"
cp "$ROOT_PATH/receiver/public/component.js" "$ROOT_PATH/receiver/staging"
# minify "$ROOT_PATH/receiver/public/component.js" >> "$ROOT_PATH/receiver/staging/component.js"
gcloud storage rsync "$ROOT_PATH/receiver/staging" gs://croquet-deadness-board

# build the frontend
(
  cd "$ROOT_PATH/frontend";
  flutter clean;
  flutter build web;
)

# deploy firebase
firebase use deadness-84106
firebase deploy
