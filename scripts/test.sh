#!/usr/bin/env bash

set -euo pipefail

echo "========== TEST =========="

echo
echo "Testing payment-sdk..."

if [ -d external/payment-sdk ]; then
    make -C external/payment-sdk test
fi

echo
echo "Testing json-utils..."

pytest external/json-utils/tests

echo
echo "Testing mini-shop..."

pytest app/tests

echo
echo "All tests passed."
