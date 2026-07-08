#!/usr/bin/env bash

set -euo pipefail

echo "========== BUILD =========="

echo "Checking payment-sdk..."

if [ -d external/payment-sdk ]; then
    make -C external/payment-sdk build
else
    echo "payment-sdk not found"
fi

echo
echo "Installing json-utils..."

python -m pip install -e external/json-utils

echo
echo "Mini Shop build completed."
