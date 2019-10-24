#!/usr/bin/env bash

error_usage=1

usage() {
  echo "usage: $(basename $0) <vim options>         # Edit ~/.bashrc"
  echo "   or: $(basename $0) [file] <vim options>  # Edit file"
}

exit.usage() {
  usage
  exit $error_usage
}

exit.help() {
  echo "Edit a file then bash-source it if it was modified."
  echo ""
  usage
  exit 0
}

[ "$1" == "-h" ] || [ "$1" == "--help" ] && exit.help

if [ -n "$1" ]; then
  target="$1"
  shift
else
  target=~/.bashrc
fi

vim "$target" $@ && [ -N $target ] && . $target
