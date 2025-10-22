#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
BUILD_DIR="${PROJECT_ROOT}/asw/build"
LOG_DIR="${PROJECT_ROOT}/logs"

mkdir -p "${BUILD_DIR}" "${LOG_DIR}"

cmake -S "${PROJECT_ROOT}/asw" -B "${BUILD_DIR}" "$@"
cmake --build "${BUILD_DIR}" --target all | tee "${LOG_DIR}/build.log"
