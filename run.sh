#!/bin/bash
# Quick run script for DNS Reconnaissance Tool

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}"
echo "╔════════════════════════════════════════════╗"
echo "║    DNS Reconnaissance Tool - Quick Run    ║"
echo "╚════════════════════════════════════════════╝"
echo -e "${NC}"

# Check if domain is provided
if [ -z "$1" ]; then
    echo -e "${RED}Error: Please provide a domain name${NC}"
    echo "Usage: ./run.sh <domain-name>"
    echo "Example: ./run.sh google.com"
    exit 1
fi

DOMAIN=$1

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}Error: Python 3 is not installed${NC}"
    exit 1
fi

# Check if dependencies are installed
if ! python3 -c "import dns.resolver" &> /dev/null; then
    echo -e "${YELLOW}Installing dependencies...${NC}"
    pip3 install -r requirements.txt
fi

# Run the tool
echo -e "${GREEN}Starting DNS reconnaissance for: $DOMAIN${NC}"
python3 dns_recon.py "$DOMAIN"

# Check if report was generated
if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}✓ Reconnaissance completed successfully!${NC}"
    echo -e "${YELLOW}Reports are available in the 'reports/' directory${NC}"
else
    echo -e "${RED}✗ Reconnaissance failed${NC}"
    exit 1
fi
