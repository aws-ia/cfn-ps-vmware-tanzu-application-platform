#!/bin/bash
set -e

export SCRIPT_DIR="$(dirname "$0")"
source "$SCRIPT_DIR/functions.sh"

function bootstrapEC2 {
  banner "Bootstrap EC2 instance with tools..."
  readUserInputs
  installTanzuCLI
  verifyTools
  echo "Bootstrap EC2 instance done..."
}

export DOWNLOADS="$(dirname "$SCRIPT_DIR")/downloads"
export INPUTS="$SCRIPT_DIR/inputs"
export GENERATED="$(dirname "$SCRIPT_DIR")/generated"
export RESOURCES="$SCRIPT_DIR/resources"
bootstrapEC2
