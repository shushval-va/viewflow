#!/bin/bash -e

git submodule update
tox -c .src/tox.ini  -e docs
cp -R .src/docs/_build/* .

