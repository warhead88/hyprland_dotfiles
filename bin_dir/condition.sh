#!/usr/bin/env bash

PROCESS_1="vac_timer.sh"
PROCESS_2="work_timer.sh"

if pgrep -f "$PROCESS_1" > /dev/null || pgrep -f "$PROCESS_2" > /dev/null; then
  echo '{"text": " running...", "class": "active"}'
else
  echo '{"text": " stopped", "class": "inactive"}'
fi
