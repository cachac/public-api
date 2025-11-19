#!/bin/bash

if [ $# -eq 0 ]
then
  echo "No arguments supplied"
  exit 1
fi

APP=$1

if ! command -v  $APP > /dev/null 2>&1; then 
  echo "$APP no está instalado"
else
  echo "$APP está instalado !!!"
fi
