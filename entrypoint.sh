#!/usr/bin/env bash

function usage() {
  echo
  echo "Usage: openapi-editor <openapi-specification-file.yaml>"
  echo
  exit -1
}

if [ -z "$1" ]; then
  echo "ERROR: no file specified!"
  usage
fi

if [[ ! "$1" =~ yaml$ ]]; then
  echo "ERROR: file should end with .yaml !"
  usage
fi

openapiFile="/openapi/$1" 
if [ ! -e "$openapiFile" ]; then
  echo "ERROR: file $1 not exist! (inside docker, $openapiFile)"
  usage
fi

npm start "$openapiFile"
