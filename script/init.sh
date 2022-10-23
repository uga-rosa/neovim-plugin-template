#!/bin/bash
set -eu

ROOT_PATH=$(cd $(dirname $0)/..; pwd)

# Empty README.md
: > $ROOT_DIR/README.md

# Initialize ./lua
ROOT_DIR=${ROOT_PATH##*/}
# Remove '.nvim' at the end
PLUGIN_NAME=${ROOT_DIR%.nvim}
# Substitute from '-' to '_'
PLUGIN_NAME=${PLUGIN_NAME//-/_}
mkdir -p $ROOT_DIR/lua/$PLUGIN_NAME
touch $ROOT_DIR/lua/$PLUGIN_NAME/init.lua
