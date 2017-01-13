#!/usr/bin/env bash
set -e

echo Running Tests

ROOT_DIR=$(cd $(dirname $0)/..; pwd)
cd $ROOT_DIR

#echo $ROOT_DIR
cd react-app-rewired

PACKAGE="$1"
GLOB=$([ -n "$PACKAGE" ] && echo "$PACKAGE" || echo "*")

# Test
tape "./packages/react-app-rewire-preact/test/index.js"