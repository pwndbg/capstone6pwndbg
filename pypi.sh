#!/usr/bin/env bash

set -ex

git submodule update --init --recursive

pushd ./capstone
  git apply ../python-rename.patch
popd

pushd ./capstone/bindings/python
  uv build
  uv publish
popd
