#!/bin/bash -e

git submodule update
git submodule foreach git pull origin master
tox -c .src/tox.ini  -e docs
cp -R .src/docs/_build/* .

