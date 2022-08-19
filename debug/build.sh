#!/usr/bin/env bash

set -xeuo pipefail

basedir=$(dirname "$(readlink -f "$0")")
maapdir=$basedir/../maap-documentation-examples

# Execute subdirectories' build scripts
for subdir in $(ls -d $maapdir/*/)
do
    file=${subdir}build.sh
    if [ -f "$file" ]; then
        bash $file
    fi
done
