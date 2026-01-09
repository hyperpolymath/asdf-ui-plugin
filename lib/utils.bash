#!/usr/bin/env bash
# SPDX-License-Identifier: AGPL-3.0-or-later
set -euo pipefail

TOOL_NAME="asdf-ui"
BINARY_NAME="asdf-ui"

fail() { echo -e "\e[31mFail:\e[m $*" >&2; exit 1; }

list_all_versions() {
  echo "1.0.0"
}

download_release() {
  local version="$1" download_path="$2"
  mkdir -p "$download_path"
  echo "$version" > "$download_path/VERSION"
}

install_version() {
  local install_type="$1" version="$2" install_path="$3"

  mkdir -p "$install_path/bin"

  cat > "$install_path/bin/asdf-ui" << 'SCRIPT'
#!/usr/bin/env bash
# asdf-ui - Terminal UI for asdf
echo "asdf-ui v1.0.0 - Terminal user interface for asdf"
echo ""
echo "Usage: asdf-ui [command]"
echo ""
echo "Commands:"
echo "  (none)           Launch interactive TUI"
echo "  dashboard        Show plugin dashboard"
echo "  versions         Interactive version selector"
echo ""
echo "This meta-plugin provides a terminal UI for asdf management."
SCRIPT
  chmod +x "$install_path/bin/asdf-ui"
}
