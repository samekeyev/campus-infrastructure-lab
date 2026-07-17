#!/usr/bin/env bash

set -euo pipefail

print_system_info() {
    source /etc/os-release
    printf 'Hostname: %s\n' "$(hostname)"
    printf 'Operating system: %s\n' "$PRETTY_NAME"
    printf 'Kernel: %s\n' "$(uname -r)"
    local uptime_text
    uptime_text="$(uptime -p)"
    printf 'Uptime: %s\n' "${uptime_text#up }"
    printf 'CPU cores: %s\n' "$(nproc)"
    printf 'Memory: %s\n' "$(free -h | awk '/^Mem:/ {printf "%s / %s", $3, $2}')"
    printf 'Root filesystem: %s\n' "$(df -h --output=size,used,pcent / | awk 'NR == 2 {printf "%s / %s (%s)", $2, $1, $3}')"
    printf 'IPv4 addresses:\n%s\n' "$(ip -o -4 a | awk '{printf "  %s: %s\n", $2, $4}')"
}

print_system_info