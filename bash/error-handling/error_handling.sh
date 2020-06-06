#!/bin/bash
function main () {
  local number_of_arguments=$#
  local name=$1

  if (( number_of_arguments == 1  )); then
    echo "Hello, ${name}"
  else 
    echo "Usage: error_handling.sh <person>"
    exit 1
  fi
}

main "$@"
