#!/usr/bin/env bash

set -euo pipefail

echo "========== LINT =========="

echo
echo "Running Ruff..."

ruff check .

echo
echo "Running Black..."

black --check .

echo
echo "Running formatting check..."

if command -v clang-format >/dev/null 2>&1; then
    clang-format \
        --dry-run \
        --Werror \
        external/payment-sdk/src/*.c \
        external/payment-sdk/include/*.h
fi

echo
echo "Lint successful."
