# Bug Bounty Reconnaissance Report

**Target Domain:** `shubhamiitbhu.in`
**Report Generated:** Wed Jan 21 11:08:15 UTC 2026
**Scan Type:** Deep Scan
**Contributor:** @shubham21155102

---

## Executive Summary

This automated reconnaissance report provides comprehensive information about the target domain **shubhamiitbhu.in**, including DNS records, subdomain enumeration, technology stack identification, and security posture assessment.

### Quick Statistics

| Metric | Count |
|--------|-------|
| Total Subdomains Discovered | 41 |
| Alive Domains | 23 |
| DNS Records Analyzed | Multiple types |
| Security Headers Analyzed | All alive domains |

---

## 1. DNS Reconnaissance

### 1.1 DNS Records

# DNS Reconnaissance Report

**Target Domain:** shubhamiitbhu.in

**Generated:** 2026-01-21T11:06:08.407753

---

## DNS Records

### A Records

- `76.76.21.21`

### AAAA Records

- *No records found*

### MX Records

- `1 aspmx.l.google.com.`
- `5 alt1.aspmx.l.google.com.`
- `5 alt2.aspmx.l.google.com.`
- `10 alt3.aspmx.l.google.com.`
- `10 alt4.aspmx.l.google.com.`

### TXT Records

- `"google-site-verification=H2ePTlxN6KnnjSd78F78hD3YrNnbwN99b7hVqXIzUM0"`
- `"ENS1 0x238A8F792dFA6033814B18618aD4100654aeef01 0x80975B18bd465767EE42dE5e7F27fb57cB754711"`

### NS Records

- `ns56.domaincontrol.com.`
- `ns55.domaincontrol.com.`

### CNAME Records

- *No records found*

### SOA Records

- `mname=ns55.domaincontrol.com. rname=dns.jomax.net. serial=2026011201`

## WHOIS Information

**Domain Name:** shubhamiitbhu.in

**Registrar:** GoDaddy

**Creation Date:** 2023-08-26T05:10:41.412000

**Expiration Date:** 2026-08-26T05:10:41.412000

**Updated Date:** 2025-12-30T10:15:15.559000

**Status:** ['clientRenewProhibited https://icann.org/epp#clientRenewProhibited', 'clientTransferProhibited https://icann.org/epp#clientTransferProhibited', 'clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited', 'clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited']

**Name Servers:** ['ns56.domaincontrol.com', 'ns55.domaincontrol.com']

**Emails:** reg_admin@godaddy.com

**Country:** IN

## Discovered Subdomains

| Subdomain | IP Addresses |
|-----------|-------------|
| www.shubhamiitbhu.in | 66.33.60.130, 76.76.21.61 |
| mail.shubhamiitbhu.in | 76.76.21.241, 66.33.60.193 |
| ftp.shubhamiitbhu.in | 66.33.60.35, 76.76.21.123 |
| api.shubhamiitbhu.in | 216.24.57.251, 216.24.57.7 |
| dev.shubhamiitbhu.in | 66.33.60.129, 76.76.21.22 |
| test.shubhamiitbhu.in | 76.76.21.164, 66.33.60.34 |
| staging.shubhamiitbhu.in | 76.76.21.22, 66.33.60.129 |
| admin.shubhamiitbhu.in | 66.33.60.66, 76.76.21.142 |
| portal.shubhamiitbhu.in | 76.76.21.22, 66.33.60.129 |
| blog.shubhamiitbhu.in | 76.76.21.61, 66.33.60.130 |

## Reverse DNS Lookups

**76.76.21.21:** *No PTR records*



---

## 2. Subdomain Enumeration

### 2.1 Discovered Subdomains

Total unique subdomains discovered: **41**

#### Alive Domains 23

| Subdomain | IP Address | HTTP Status | HTTPS Status |
|-----------|-----------|-------------|--------------|
| admin.shubhamiitbhu.in | 66.33.60.67 | HTTP:308 | HTTPS:404 |
| android.shubhamiitbhu.in | 66.33.60.66 | HTTP:308 | HTTPS:200 |
| api.shubhamiitbhu.in | 216.24.57.251 | HTTP:301 | HTTPS:000000 |
| app.shubhamiitbhu.in | 76.76.21.241 | HTTP:308 | HTTPS:404 |
| assets.shubhamiitbhu.in | 76.76.21.61 | HTTP:308 | HTTPS:404 |
| ayushcleaning.shubhamiitbhu.in | 66.33.60.67 | HTTP:308 | HTTPS:200 |
| blog.shubhamiitbhu.in | 76.76.21.61 | HTTP:308 | HTTPS:404 |
| cdn.shubhamiitbhu.in | 66.33.60.130 | HTTP:308 | HTTPS:404 |
| chat.shubhamiitbhu.in | 76.76.21.123 | HTTP:308 | HTTPS:200 |
| compiler.shubhamiitbhu.in | 66.33.60.67 | HTTP:308 | HTTPS:200 |
| crud.redux.shubhamiitbhu.in | 66.33.60.130 | HTTP:308 | HTTPS:200 |
| dart.shubhamiitbhu.in | 76.76.21.123 | HTTP:308 | HTTPS:200 |
| dev.shubhamiitbhu.in | 66.33.60.129 | HTTP:308 | HTTPS:000000 |
| ecommerce.shubhamiitbhu.in | 76.76.21.61 | HTTP:308 | HTTPS:200 |
| fmc.shubhamiitbhu.in | 76.76.21.142 | HTTP:308 | HTTPS:200 |
| fmcbackend.shubhamiitbhu.in | 76.76.21.22 | HTTP:308 | HTTPS:404 |
| ftp.shubhamiitbhu.in | 76.76.21.123 | HTTP:308 | HTTPS:404 |
| fyle.shubhamiitbhu.in | 76.76.21.98 | HTTP:308 | HTTPS:200 |
| jspl.shubhamiitbhu.in | 76.76.21.164 | HTTP:308 | HTTPS:200 |
| learn.shubhamiitbhu.in | 66.33.60.35 | HTTP:308 | HTTPS:200 |

*(Note: Only first 20 results shown. Check resolved_subdomains.txt for complete list)*

---

## 3. Technology Stack

Identified technologies across discovered subdomains:

[*] Scanning android.shubhamiitbhu.in
android.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning api.shubhamiitbhu.in
api.shubhamiitbhu.in | Server: cloudflare | Powered-By: None | Technologies: None detected
[*] Scanning ayushcleaning.shubhamiitbhu.in
ayushcleaning.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning chat.shubhamiitbhu.in
chat.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning compiler.shubhamiitbhu.in
compiler.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning crud.redux.shubhamiitbhu.in
crud.redux.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning dart.shubhamiitbhu.in
dart.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning ecommerce.shubhamiitbhu.in
ecommerce.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning fmc.shubhamiitbhu.in
fmc.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning fyle.shubhamiitbhu.in
fyle.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning jspl.shubhamiitbhu.in
jspl.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning learn.shubhamiitbhu.in
learn.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning music.shubhamiitbhu.in
music.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning naharomfamily.shubhamiitbhu.in
naharomfamily.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning payment.shubhamiitbhu.in
payment.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning prabhu.shubhamiitbhu.in
prabhu.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning quiz.shubhamiitbhu.in
quiz.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning quizbackend.shubhamiitbhu.in
quizbackend.shubhamiitbhu.in | Server: Vercel | Powered-By: Express | Technologies: None detected
[*] Scanning sfcalculator.shubhamiitbhu.in
sfcalculator.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning sob.shubhamiitbhu.in
sob.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies: None detected
[*] Scanning www.ecommerce.shubhamiitbhu.in
www.ecommerce.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning www.learn.shubhamiitbhu.in
www.learn.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React
[*] Scanning www.shubhamiitbhu.in
www.shubhamiitbhu.in | Server: Vercel | Powered-By: None | Technologies:  React

---

## 4. Security Analysis

### 4.1 Security Headers Assessment

Security Header Analysis Report
Generated: Wed Jan 21 11:07:23 UTC 2026
=====================================

### android.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### api.shubhamiitbhu.in ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### ayushcleaning.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### chat.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### compiler.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### crud.redux.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### dart.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### ecommerce.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### fmc.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### fyle.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### jspl.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### learn.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### music.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### naharomfamily.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### payment.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### prabhu.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### quiz.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### quizbackend.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### sfcalculator.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### sob.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### www.ecommerce.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### www.learn.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### www.shubhamiitbhu.in ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing


### 4.2 SSL/TLS Certificate Analysis

SSL/TLS Analysis Report
Generated: Wed Jan 21 11:07:32 UTC 2026
=============================

### android.shubhamiitbhu.in ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 66.33.60.66

Testing SSL server android.shubhamiitbhu.in on port 443 using SNI name android.shubhamiitbhu.in

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
Preferred TLSv1.2  128 bits  ECDHE-RSA-AES128-GCM-SHA256   Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-RSA-AES256-GCM-SHA384   Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-RSA-CHACHA20-POLY1305   Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  DHE-RSA-AES256-GCM-SHA384     DHE 2048 bits

  Server Key Exchange Group(s):
TLSv1.3  128 bits  secp256r1 (NIST P-256)
TLSv1.3  192 bits  secp384r1 (NIST P-384)
TLSv1.3  260 bits  secp521r1 (NIST P-521)
TLSv1.3  128 bits  x25519
TLSv1.2  128 bits  secp256r1 (NIST P-256)
TLSv1.2  192 bits  secp384r1 (NIST P-384)
TLSv1.2  260 bits  secp521r1 (NIST P-521)
TLSv1.2  128 bits  x25519

  SSL Certificate:
Signature Algorithm: sha256WithRSAEncryption

### api.shubhamiitbhu.in ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 216.24.57.251

Testing SSL server api.shubhamiitbhu.in on port 443 using SNI name api.shubhamiitbhu.in

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
Preferred TLSv1.2  128 bits  ECDHE-ECDSA-AES128-GCM-SHA256 Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-CHACHA20-POLY1305 Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-GCM-SHA384 Curve 25519 DHE 253

  Server Key Exchange Group(s):
TLSv1.3  128 bits  secp256r1 (NIST P-256)
TLSv1.3  192 bits  secp384r1 (NIST P-384)
TLSv1.3  260 bits  secp521r1 (NIST P-521)
TLSv1.3  128 bits  x25519
TLSv1.2  128 bits  secp256r1 (NIST P-256)

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

All raw data and detailed reports are saved in the `bugbounty_reports/shubhamiitbhu.in/` directory:

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

- Workflow Run: https://github.com/shubham21155102/target-dns/actions/runs/21207193805
- Contributor: @shubham21155102
- Scan Date: Wed Jan 21 11:08:15 UTC 2026
