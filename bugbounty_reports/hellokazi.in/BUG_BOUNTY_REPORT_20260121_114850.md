# Bug Bounty Reconnaissance Report

**Target Domain:** `hellokazi.in`
**Report Generated:** Wed Jan 21 11:48:50 UTC 2026
**Scan Type:** Deep Scan
**Contributor:** @shubham21155102

---

## Executive Summary

This automated reconnaissance report provides comprehensive information about the target domain **hellokazi.in**, including DNS records, subdomain enumeration, technology stack identification, and security posture assessment.

### Quick Statistics

| Metric | Count |
|--------|-------|
| Total Subdomains Discovered | 2 |
| Alive Domains | 2 |
| DNS Records Analyzed | Multiple types |
| Security Headers Analyzed | All alive domains |

---

## 1. DNS Reconnaissance

### 1.1 DNS Records

# DNS Reconnaissance Report

**Target Domain:** hellokazi.in

**Generated:** 2026-01-21T11:48:08.498684

---

## DNS Records

### A Records

- `147.79.120.99`
- `148.135.128.56`

### AAAA Records

- `2a02:4780:51:da80:c83d:d2bd:ff99:b5e9`
- `2a02:4780:50:c146:53ba:1c57:fe64:a6aa`

### MX Records

- `10 mx2.hostinger.com.`
- `5 mx1.hostinger.com.`

### TXT Records

- `"v=spf1 include:_spf.mail.hostinger.com ~all"`

### NS Records

- `ns2.dns-parking.com.`
- `ns1.dns-parking.com.`

### CNAME Records

- *No records found*

### SOA Records

- `mname=ns1.dns-parking.com. rname=dns.hostinger.com. serial=2026011501`

## WHOIS Information

**Domain Name:** hellokazi.in

**Registrar:** HOSTINGER operations, UAB

**Creation Date:** 2025-04-25T05:35:14.572000

**Expiration Date:** 2026-04-25T05:35:14.572000

**Updated Date:** 2025-05-29T23:49:02.744000

**Status:** clientTransferProhibited https://icann.org/epp#clientTransferProhibited

**Name Servers:** ['ns1.dns-parking.com', 'ns2.dns-parking.com']

**Emails:** domains@hostinger.com

**Country:** IN

## Discovered Subdomains

| Subdomain | IP Addresses |
|-----------|-------------|
| www.hellokazi.in | 148.135.128.8, 77.37.76.7 |
| ftp.hellokazi.in | 145.223.17.144 |

## Reverse DNS Lookups

**147.79.120.99:** *No PTR records*

**148.135.128.56:** *No PTR records*

**2a02:4780:51:da80:c83d:d2bd:ff99:b5e9:** *No PTR records*

**2a02:4780:50:c146:53ba:1c57:fe64:a6aa:** *No PTR records*



---

## 2. Subdomain Enumeration

### 2.1 Discovered Subdomains

Total unique subdomains discovered: **2**

#### Alive Domains 2

| Subdomain | IP Address | HTTP Status | HTTPS Status |
|-----------|-----------|-------------|--------------|
| ftp.hellokazi.in | 145.223.17.144 | HTTP:403 | HTTPS:000000 |
| www.hellokazi.in | 148.135.128.8 | HTTP:301 | HTTPS:200 |

*(Note: Only first 20 results shown. Check resolved_subdomains.txt for complete list)*

---

## 3. Technology Stack

Identified technologies across discovered subdomains:

[*] Scanning ftp.hellokazi.in
ftp.hellokazi.in | Server: LiteSpeed | Powered-By: None | Technologies: None detected
[*] Scanning www.hellokazi.in
www.hellokazi.in | Server: hcdn | Powered-By: PHP/8.3.19 | Technologies: None detected

---

## 4. Security Analysis

### 4.1 Security Headers Assessment

Security Header Analysis Report
Generated: Wed Jan 21 11:48:38 UTC 2026
=====================================

### ftp.hellokazi.in ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### www.hellokazi.in ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✓] CSP: Present
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing


### 4.2 SSL/TLS Certificate Analysis

SSL/TLS Analysis Report
Generated: Wed Jan 21 11:48:42 UTC 2026
=============================

### ftp.hellokazi.in ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 145.223.17.144

Testing SSL server ftp.hellokazi.in on port 443 using SNI name ftp.hellokazi.in

  SSL/TLS Protocols:
SSLv2     disabled
SSLv3     disabled
TLSv1.0   disabled
TLSv1.1   disabled
TLSv1.2   disabled
TLSv1.3   disabled

  TLS Fallback SCSV:
Connection failed - unable to determine TLS Fallback SCSV support

  TLS renegotiation:
Session renegotiation not supported

  TLS Compression:
OpenSSL version does not support compression
Rebuild with zlib1g-dev package for zlib support

  Heartbleed:

  Supported Server Cipher(s):
    Unable to parse certificate
    Unable to parse certificate
    Unable to parse certificate
    Unable to parse certificate
Certificate information cannot be retrieved.


### www.hellokazi.in ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 148.135.128.8

Testing SSL server www.hellokazi.in on port 443 using SNI name www.hellokazi.in

  SSL/TLS Protocols:
SSLv2     disabled
SSLv3     disabled
TLSv1.0   disabled
TLSv1.1   disabled
TLSv1.2   enabled
TLSv1.3   enabled

  TLS Fallback SCSV:
Server supports TLS Fallback SCSV

  TLS renegotiation:
Session renegotiation not supported

  TLS Compression:
OpenSSL version does not support compression
Rebuild with zlib1g-dev package for zlib support

  Heartbleed:
TLSv1.3 not vulnerable to heartbleed
TLSv1.2 not vulnerable to heartbleed

  Supported Server Cipher(s):
Preferred TLSv1.3  128 bits  TLS_AES_128_GCM_SHA256        Curve 25519 DHE 253
Accepted  TLSv1.3  256 bits  TLS_AES_256_GCM_SHA384        Curve 25519 DHE 253
Accepted  TLSv1.3  256 bits  TLS_CHACHA20_POLY1305_SHA256  Curve 25519 DHE 253
Preferred TLSv1.2  256 bits  ECDHE-RSA-AES256-GCM-SHA384   Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  DHE-RSA-AES256-GCM-SHA384     DHE 2048 bits
Accepted  TLSv1.2  256 bits  ECDHE-RSA-CHACHA20-POLY1305   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-GCM-SHA256   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  DHE-RSA-AES128-GCM-SHA256     DHE 2048 bits

  Server Key Exchange Group(s):
TLSv1.3  128 bits  secp256r1 (NIST P-256)
TLSv1.3  192 bits  secp384r1 (NIST P-384)
TLSv1.3  128 bits  x25519
TLSv1.2  128 bits  secp256r1 (NIST P-256)
TLSv1.2  192 bits  secp384r1 (NIST P-384)
TLSv1.2  128 bits  x25519

  SSL Certificate:
Signature Algorithm: sha256WithRSAEncryption
RSA Key Strength:    4096


*(Note: Truncated. Check ssl_analysis.txt for complete results)*

### 4.3 Open Ports

80/tcp  open  http
443/tcp open  https

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

All raw data and detailed reports are saved in the `bugbounty_reports/hellokazi.in/` directory:

- `subdomains/all_subdomains_final.txt` - Complete list of discovered subdomains
- `subdomains/resolved_subdomains.txt` - Resolved IP addresses and HTTP status codes
- `subdomains/alive_subdomains.txt` - Domains with active web services
- `subdomains/technologies.txt` - Technology fingerprinting results
- `vulnerabilities/security_headers_analysis.txt` - Detailed security header analysis
- `vulnerabilities/ssl_analysis.txt` - SSL/TLS certificate details
- `vulnerabilities/nmap_top100.txt` - Port scan results (if deep scan enabled)

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

---

## Scan Summary

- Workflow Run: https://github.com/shubham21155102/target-dns/actions/runs/21208390827
- Contributor: @shubham21155102
- Scan Date: Wed Jan 21 11:48:50 UTC 2026
