#!/bin/bash

echo "Checking angular"

if ng --version > /dev/null; then
  echo "angular is already installed."
else
  echo "installing angular"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing angular - global"
      npm install -g @angular/cli
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi