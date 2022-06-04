#!/usr/bin/env bash

set -e

export SERVERCLI_WORKDIR=$(cd $(dirname $0) && pwd)
echo $SERVERCLI_WORKDIR

# TODO idk
find $SERVERCLI_WORKDIR -type f -iname "*.sh" -exec chmod +x {} \;

# . "$BAGCLI_WORKDIR/common"

cli_help() {
  echo "
Server Setup CLI
Version: $(cat $SERVERCLI_WORKDIR/VERSION)
Commands:
  setup    Setup the server
"
  exit 1
}

case "$1" in
  setup)
    "$SERVERCLI_WORKDIR/setup.sh" "$2"
    ;;

  *)
    cli_help
    ;;
esac