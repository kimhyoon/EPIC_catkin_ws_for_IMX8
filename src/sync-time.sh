#!/bin/bash
# Sync system time from remote host (hmcl@192.168.2.3) via SSH
# Usage: sudo ./sync-time.sh

set -e

REMOTE_HOST="hmcl@192.168.2.3"

echo "[*] Fetching UTC time from ${REMOTE_HOST}..."
REMOTE_TIME=$(ssh "${REMOTE_HOST}" 'LC_ALL=C date -u +%Y-%m-%dT%H:%M:%S')

if [ -z "${REMOTE_TIME}" ]; then
    echo "[!] Failed to get time from remote host" >&2
    exit 1
fi

echo "[*] Remote UTC time: ${REMOTE_TIME}"
echo "[*] Setting system time..."
date -u -s "${REMOTE_TIME}"

echo "[+] Done. Current system time: $(date)"
