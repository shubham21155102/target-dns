#!/bin/bash

# Ensure the script fails on error
set -e

TARGET="${TARGET_DOMAIN}"
OUTPUT_DIR="bugbounty_reports/${TARGET}"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "=== Generating Bug Bounty Report ==="

REPORT_FILE="${OUTPUT_DIR}/BUG_BOUNTY_REPORT_${TIMESTAMP}.md"

if [ "${DEEP_SCAN}" = "true" ]; then
  SCAN_TYPE="Deep Scan"
else
  SCAN_TYPE="Standard Scan"
fi

cat > "$REPORT_FILE" << EOF
# Bug Bounty Reconnaissance Report

**Target Domain:** \`${TARGET}\`
**Report Generated:** $(date)
**Scan Type:** ${SCAN_TYPE}
**Contributor:** @shubham21155102

---

## Executive Summary

This automated reconnaissance report provides comprehensive information about the target domain **${TARGET}**, including DNS records, subdomain enumeration, technology stack identification, and security posture assessment.

### Quick Statistics

| Metric | Count |
|--------|-------|
| Total Subdomains Discovered | $(wc -l < "${OUTPUT_DIR}/subdomains/all_subdomains_final.txt" 2>/dev/null || echo "N/A") |
| Alive Domains | $(wc -l < "${OUTPUT_DIR}/subdomains/alive_subdomains.txt" 2>/dev/null || echo "N/A") |
| DNS Records Analyzed | Multiple types |
| Security Headers Analyzed | All alive domains |

---

## 1. DNS Reconnaissance

### 1.1 DNS Records

EOF

# Append DNS report if exists
find "$OUTPUT_DIR" -name "*${TARGET}*.md" -o -name "*${TARGET}*.txt" | head -1 | while read file; do
  if [ -f "$file" ]; then
    cat "$file" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
  fi
done

cat >> "$REPORT_FILE" << EOF

---

## 2. Subdomain Enumeration

### 2.1 Discovered Subdomains

Total unique subdomains discovered: **$(wc -l < "${OUTPUT_DIR}/subdomains/all_subdomains_final.txt" 2>/dev/null || echo "0")**

#### Alive Domains $(wc -l < "${OUTPUT_DIR}/subdomains/alive_subdomains.txt" 2>/dev/null || echo "0")

| Subdomain | IP Address | HTTP Status | HTTPS Status |
|-----------|-----------|-------------|--------------|
EOF

# Add resolved subdomains table
if [ -f "${OUTPUT_DIR}/subdomains/resolved_subdomains.txt" ]; then
  head -20 "${OUTPUT_DIR}/subdomains/resolved_subdomains.txt" | while IFS=',' read -r subdomain ip http https; do
    echo "| $subdomain | $ip | $http | $https |" >> "$REPORT_FILE"
  done
fi

cat >> "$REPORT_FILE" << EOF

*(Note: Only first 20 results shown. Check resolved_subdomains.txt for complete list)*

---

## 3. Technology Stack

Identified technologies across discovered subdomains:

EOF

if [ -f "${OUTPUT_DIR}/subdomains/technologies.txt" ]; then
  cat "${OUTPUT_DIR}/subdomains/technologies.txt" >> "$REPORT_FILE"
fi

cat >> "$REPORT_FILE" << EOF

---

## 4. Security Analysis

### 4.1 Security Headers Assessment

EOF

if [ -f "${OUTPUT_DIR}/vulnerabilities/security_headers_analysis.txt" ]; then
  cat "${OUTPUT_DIR}/vulnerabilities/security_headers_analysis.txt" >> "$REPORT_FILE"
fi

cat >> "$REPORT_FILE" << EOF

### 4.2 SSL/TLS Certificate Analysis

EOF

if [ -f "${OUTPUT_DIR}/vulnerabilities/ssl_analysis.txt" ]; then
  head -100 "${OUTPUT_DIR}/vulnerabilities/ssl_analysis.txt" >> "$REPORT_FILE"
  echo "" >> "$REPORT_FILE"
  echo "*(Note: Truncated. Check ssl_analysis.txt for complete results)*" >> "$REPORT_FILE"
fi

# Port scanning section if deep scan was enabled
if [ "${DEEP_SCAN}" = "true" ] && [ -f "${OUTPUT_DIR}/vulnerabilities/open_ports_summary.txt" ]; then
  cat >> "$REPORT_FILE" << EOF

### 4.3 Open Ports

EOF
  cat "${OUTPUT_DIR}/vulnerabilities/open_ports_summary.txt" >> "$REPORT_FILE"
fi

cat >> "$REPORT_FILE" << EOF

---

## 5. Potential Vulnerabilities & Findings

### 5.1 Missing Security Headers

Based on the automated analysis, the following domains may be missing important security headers:

- **X-Frame-Options**: Clickjacking protection
- **Content-Security-Policy**: XSS and data injection protection
- **Strict-Transport-Security**: HTTPS enforcement
- **X-Content-Type-Options**: MIME-sniffing protection

### 5.2 Recommendations

1. **Implement Security Headers**: Ensure all domains have proper security headers configured
2. **Update SSL Certificates**: Review and update any expiring SSL certificates
3. **Subdomain Management**: Review discovered subdomains and remove unnecessary ones
4. **Port Hardening**: Close unnecessary open services (if deep scan enabled)
5. **Technology Updates**: Keep all detected technologies and frameworks updated

---

## 6. Methodology

This automated reconnaissance was performed using the following methods:

### 6.1 Subdomain Discovery
- Certificate Transparency logs (crt.sh)
- DNS aggregator queries
- Active DNS bruteforcing (optional)
- Search engine enumeration

### 6.2 DNS Analysis
- A, AAAA, MX, TXT, NS, CNAME, SOA record queries
- WHOIS information gathering
- Reverse DNS lookups

### 6.3 Web Analysis
- HTTP/HTTPS probing
- Technology stack fingerprinting
- Security header analysis
- SSL/TLS certificate validation

### 6.4 Network Analysis (Deep Scan)
- Top 100 port scanning
- Service version detection
- Open port enumeration

---

## 7. Files Generated

All raw data and detailed reports are saved in the \`bugbounty_reports/${TARGET}/\` directory:

- \`subdomains/all_subdomains_final.txt\` - Complete list of discovered subdomains
- \`subdomains/resolved_subdomains.txt\` - Resolved IP addresses and HTTP status codes
- \`subdomains/alive_subdomains.txt\` - Domains with active web services
- \`subdomains/technologies.txt\` - Technology fingerprinting results
- \`vulnerabilities/security_headers_analysis.txt\` - Detailed security header analysis
- \`vulnerabilities/ssl_analysis.txt\` - SSL/TLS certificate details
- \`vulnerabilities/nmap_top100.txt\` - Port scan results (if deep scan enabled)

---

## 8. Disclaimer

This automated reconnaissance report is generated for educational and authorized security testing purposes only. All findings should be manually verified before submission to any bug bounty program. The contributor (@shubham21155102) and this tool are not responsible for any misuse of this information.

**Always ensure you have proper authorization before testing any target.**

---

## 9. Next Steps for Bug Bounty Hunters

1. **Manual Verification**: Verify all automated findings manually
2. **Vulnerability Scanning**: Use tools like Nuclei, Burp Suite for deeper analysis
3. **Endpoint Discovery**: Hunt for hidden endpoints, parameters, and APIs
4. **Business Logic**: Test for business logic vulnerabilities
5. **Authentication/Authorization**: Test authentication and authorization mechanisms
6. **Data Validation**: Check for input validation and sanitization issues

---

*Report generated by automated Bug Bounty Reconnaissance Workflow*
*Contributor: shubham21155102*
*Repository: shubham21155102/target-dns*
EOF

echo "[✓] Bug bounty report generated: $REPORT_FILE"

# Create a summary for easy reading
echo "" >> "$REPORT_FILE"
echo "---" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "## Scan Summary" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "- Workflow Run: ${GITHUB_SERVER_URL}/${GITHUB_REPOSITORY}/actions/runs/${GITHUB_RUN_ID}" >> "$REPORT_FILE"
echo "- Contributor: @shubham21155102" >> "$REPORT_FILE"
echo "- Scan Date: $(date)" >> "$REPORT_FILE"
