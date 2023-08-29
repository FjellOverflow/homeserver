#!/usr/bin/env bash

# load ENV
CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $CURRENT_DIR/.env

# https://docs.ntfy.sh/publish/
curl -H "Title: $1" -d "$2" "$NOTIFICATIONS_URL/homeserver"