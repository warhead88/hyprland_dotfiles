#!/usr/bin/env bash
set -euo pipefail

trap 'echo -e "\e[31m[ERROR]\e[0m Error on line $LINENO"; exit 1' ERR

### ───── Colored logs ─────
log_info()  { echo -e "\e[34m[INFO]\e[0m $*"; }
log_warn()  { echo -e "\e[33m[WARN]\e[0m $*"; }
log_error() { echo -e "\e[31m[ERROR]\e[0m $*" >&2; }

### ───── Checking environment ─────
require() {
  for cmd in "$@"; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
      log_error "Didn't find: $cmd"
      exit 1
    fi
  done
}

check_arch() {
  if [[ "$(uname -r)" != *"arch"* && ! -f /etc/arch-release ]]; then
    log_error "Installer works ONLY on Arch Linux"
    exit 1
  fi
}

### ───── Main process ─────
main() {
  log_info "Checking environment..."
  require bash git rsync curl
  check_arch

  log_info "Installing packages..."
  bash scripts/install_packages.sh

  log_info "Deploying configs..."
  bash scripts/deploy_configs.sh

  log_info "Installation completed!"
}

main "$@"

