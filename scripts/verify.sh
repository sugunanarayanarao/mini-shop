#!/usr/bin/env bash

set -euo pipefail

echo
echo "Verification Started"

echo
./scripts/lint.sh

echo
./scripts/build.sh

echo
./scripts/test.sh

echo
echo "Verification Successful"
