#!/usr/bin/env bash

set -xeuo pipefail

basedir=$(dirname "$(readlink -f "$0")")
/bin/bash $basedir/../gedi-subsetter/build.sh
