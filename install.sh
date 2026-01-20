#!/usr/bin/env bash

set -e

SCRIPT_SRC="tcp-blast"
INSTALL_NAME="tcp-blast"
INSTALL_PATH="/usr/local/bin/$INSTALL_NAME"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m'

echo -e "${BLUE}${BOLD}[*] Installing TCP-BLAST...${NC}"

if [ ! -f "$SCRIPT_SRC" ]; then
    echo -e "${RED}[!] Error: $SCRIPT_SRC not found. Please run this script from the repo root.${NC}"
    exit 1
fi

if [ "$EUID" -ne 0 ]; then
    echo -e "${BOLD}[!] Please run as root (use: sudo ./install.sh)${NC}"
    exit 1
fi

cp "$SCRIPT_SRC" "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

echo -e "${GREEN}${BOLD}[✓] Success: TCP-BLAST installed to $INSTALL_PATH${NC}"
echo -e "${BLUE}[*] You can now run it globally using:${NC} ${BOLD}tcp-blast${NC}"
