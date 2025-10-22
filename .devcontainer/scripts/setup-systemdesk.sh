#!/usr/bin/env bash
set -euo pipefail

if [[ -n "${SYSTEMDESK_INSTALLER:-}" && -f "/workspace/${SYSTEMDESK_INSTALLER}" ]]; then
  echo "Installing SystemDesk CLI from ${SYSTEMDESK_INSTALLER}"
  tar -xzf "/workspace/${SYSTEMDESK_INSTALLER}" -C /opt/dspace
  ln -sf /opt/dspace/SystemDeskCLI/bin/systemdesk /usr/local/bin/systemdesk
else
  echo "SYSTEMDESK_INSTALLER not provided or file missing. Skipping SystemDesk CLI installation."
fi
