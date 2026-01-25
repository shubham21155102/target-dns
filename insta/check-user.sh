#!/usr/bin/env bash
set -euo pipefail

# check_user.sh - Check if a username exists on your dev endpoint
# Usage: ./insta/check_user.sh --username <name> [--endpoint <url>]

show_help() {
  cat <<EOF
Usage: $0 --username <name> [--endpoint <url>] [--require-root]

Checks the dev endpoint for the given username and writes JSON to stdout.
Exit codes: 0=found, 1=not found, 2=error

Options:
  -r, --require-root   Exit with error if the script is not run as root
EOF
}

USERNAME=""
ENDPOINT="https://wwwdev.myweb.com"
REQUIRE_ROOT="false"

while [[ $# -gt 0 ]]; do
  case "$1" in
    -u|--username)
      USERNAME="$2"; shift 2;;
    -e|--endpoint)
      ENDPOINT="$2"; shift 2;;
    -r|--require-root)
      REQUIRE_ROOT="true"; shift 1;;
    -h|--help)
      show_help; exit 0;;
    *)
      echo "Unknown option: $1" >&2; show_help; exit 2;;
  esac
done

if [[ -z "$USERNAME" ]]; then
  echo "{\"error\":\"username required\"}" >&2
  show_help >&2
  exit 2
fi

if [[ "$REQUIRE_ROOT" == "true" && "$(id -u)" -ne 0 ]]; then
  echo "{\"error\":\"must be run as root\"}" >&2
  exit 2
fi

command -v curl >/dev/null 2>&1 || { echo "{\"error\":\"curl is required\"}" >&2; exit 2; }

# The exact marker used in your existing script to indicate "no user"
NOT_FOUND_MARKER="The User May Have Been Banned Or Page Being Deleted/Non-Exsistance/No User (With this username)"

# Query the dev endpoint
set +e
resp=$(curl -sS --fail "${ENDPOINT%/}/$USERNAME/?__a=1" 2>/dev/null)
curl_rc=$?
set -e

if [[ $curl_rc -ne 0 ]]; then
  # treat non-2xx as not found / unreachable for this checker
  printf '{"username":"%s","found":false,"endpoint":"%s"}\n' "$USERNAME" "$ENDPOINT"
  exit 1
fi

# If the response contains the NOT_FOUND_MARKER -> not found
if echo "$resp" | grep -qF "$NOT_FOUND_MARKER"; then
  printf '{"username":"%s","found":false,"endpoint":"%s"}\n' "$USERNAME" "$ENDPOINT"
  exit 1
else
  printf '{"username":"%s","found":true,"endpoint":"%s"}\n' "$USERNAME" "$ENDPOINT"
  exit 0
fi
