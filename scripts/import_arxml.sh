#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
ARXML_DIR="${PROJECT_ROOT}/asw/config"
OUTPUT_DIR="${PROJECT_ROOT}/asw/generated"
LOG_DIR="${PROJECT_ROOT}/logs"

mkdir -p "${OUTPUT_DIR}" "${LOG_DIR}"

if ! command -v systemdesk >/dev/null 2>&1; then
  echo "SystemDesk CLI not found in PATH. Ensure it is installed inside the Dev Container." >&2
  exit 1
fi

systemdesk \
  --import "${ARXML_DIR}" \
  --output "${OUTPUT_DIR}" \
  --log-level debug \
  --log-file "${LOG_DIR}/systemdesk-import.log"
