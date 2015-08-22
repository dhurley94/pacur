#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

for dir in */ ; do
    cd $dir
    docker build --rm --no-cache -t ${dir::-1} .
    cd ..
done
