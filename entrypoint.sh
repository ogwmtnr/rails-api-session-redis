#!/bin/bash -eux

# NOTE: `A server is already running. Check /app/tmp/pids/server.pid.` の発生を防ぐ
rm -f /app/tmp/pids/server.pid
/bin/bash