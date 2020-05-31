#!/bin/bash
number_of_arguments=$#
name=$1

function main () {
  if [[ number_of_arguments -eq 1 ]]; then
    name=$name
  else 
    echo "Usage: error_handling.sh <person>"
    exit 1
  fi

  echo "Hello, ${name}"
}

main
