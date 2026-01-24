# Bug Bounty Reconnaissance Report

**Target Domain:** `app.snowflake.com`
**Report Generated:** Sat Jan 24 06:33:07 UTC 2026
**Scan Type:** Deep Scan
**Contributor:** @shubham21155102

---

## Executive Summary

This automated reconnaissance report provides comprehensive information about the target domain **app.snowflake.com**, including DNS records, subdomain enumeration, technology stack identification, and security posture assessment.

### Quick Statistics

| Metric | Count |
|--------|-------|
| Total Subdomains Discovered | 1038 |
| Alive Domains | 25 |
| DNS Records Analyzed | Multiple types |
| Security Headers Analyzed | All alive domains |

---

## 1. DNS Reconnaissance

### 1.1 DNS Records

# DNS Reconnaissance Report

**Target Domain:** app.snowflake.com

**Generated:** 2026-01-24T06:22:53.629925

---

## DNS Records

### A Records

- `162.159.133.73`

### AAAA Records

- *No records found*

### MX Records

- *No records found*

### TXT Records

- `"ca3-a58789f04d2247b3b291713e2446410b"`
- `"google-site-verification=KFXB6uWpMkuJZq4c1zTiTEBIflrJ0Qcxg1nC_b2sbxA"`

### NS Records

- `ns-1427.awsdns-50.org.`
- `ns-1596.awsdns-07.co.uk.`
- `ns-509.awsdns-63.com.`
- `ns-723.awsdns-26.net.`

### CNAME Records

- *No records found*

### SOA Records

- `mname=ns-1596.awsdns-07.co.uk. rname=awsdns-hostmaster.amazon.com. serial=1`

## WHOIS Information

**Domain Name:** ['SNOWFLAKE.COM', 'snowflake.com']

**Registrar:** MarkMonitor, Inc.

**Whois Server:** whois.markmonitor.com

**Creation Date:** ['1995-07-08 04:00:00', '1995-07-08 04:00:00+00:00']

**Expiration Date:** ['2034-06-15 20:14:48', '2034-06-15 00:00:00+00:00']

**Updated Date:** ['2025-04-11 21:30:27', '2025-04-11 21:30:27+00:00']

**Status:** ['clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited', 'clientTransferProhibited https://icann.org/epp#clientTransferProhibited', 'clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited', 'serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited', 'serverTransferProhibited https://icann.org/epp#serverTransferProhibited', 'serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited', 'clientUpdateProhibited (https://www.icann.org/epp#clientUpdateProhibited)', 'clientTransferProhibited (https://www.icann.org/epp#clientTransferProhibited)', 'clientDeleteProhibited (https://www.icann.org/epp#clientDeleteProhibited)', 'serverUpdateProhibited (https://www.icann.org/epp#serverUpdateProhibited)', 'serverTransferProhibited (https://www.icann.org/epp#serverTransferProhibited)', 'serverDeleteProhibited (https://www.icann.org/epp#serverDeleteProhibited)']

**Name Servers:** ['NS-1416.AWSDNS-49.ORG', 'NS-1608.AWSDNS-09.CO.UK', 'NS-429.AWSDNS-53.COM', 'NS-826.AWSDNS-39.NET', 'ns-826.awsdns-39.net', 'ns-1608.awsdns-09.co.uk', 'ns-429.awsdns-53.com', 'ns-1416.awsdns-49.org']

**Emails:** ['abusecomplaints@markmonitor.com', 'whoisrequest@markmonitor.com']

**Org:** Snowflake Inc.

**Country:** US

## Discovered Subdomains

| Subdomain | IP Addresses |
|-----------|-------------|
| staging.app.snowflake.com | 104.18.19.157, 104.18.18.157 |

## Reverse DNS Lookups

**162.159.133.73:** *No PTR records*



---

## 2. Subdomain Enumeration

### 2.1 Discovered Subdomains

Total unique subdomains discovered: **1038**

#### Alive Domains 25

| Subdomain | IP Address | HTTP Status | HTTPS Status |
|-----------|-----------|-------------|--------------|
| *.apps-beach.preprodc1.us-west-2.aws-dev.app.snowflake.com | 54.187.55.166 | HTTP:000000 | HTTPS:000000 |
| *.jenkins.jenkinsprod1.us-west-2.aws-dev.app.snowflake.com | 54.148.215.21 | HTTP:000000 | HTTPS:000000 |
| *.jenkins.jenkinsstaging1.us-west-2.aws-dev.app.snowflake.com | 54.71.200.81 | HTTP:000000 | HTTPS:000000 |
| a462092ef46e143d2397c5d6d68e9d78.c1.usgovvirginia.azure-gov.app.snowflake.com | 62.10.58.245 | HTTP:404 | HTTPS:404 |
| a59860aa05eaaada8aabb2ab6802a6b1.c1.southeastasia.azure.app.snowflake.com | 20.43.169.253 | HTTP:404 | HTTPS:404 |
| a61e811ae3d3aeb1751a1af15429db3b.c1.centralus.azure.app.snowflake.com | 20.221.114.28 | HTTP:404 | HTTPS:404 |
| a8db2185512b0423c360834dad47ba66.c1.us-east4.gcp.app.snowflake.com | 34.86.41.165 | HTTP:404 | HTTPS:404 |
| a95a795496990815a11e65dad76a6556.c1.eastus2.azure-dev.app.snowflake.com | 20.122.231.195 | HTTP:404 | HTTPS:404 |
| a96a939b0361cba2b4042be971318c03.c1.us-east4.gcp-dev.app.snowflake.com | 34.86.118.53 | HTTP:404 | HTTPS:404 |
| app-cdn-blue.app.snowflake.com | 104.18.6.151 | HTTP:301 | HTTPS:200 |
| app-cdn-green.app.snowflake.com | 104.18.16.245 | HTTP:301 | HTTPS:200 |
| app-cdn-staging.app.snowflake.com | 104.18.20.187 | HTTP:301 | HTTPS:200 |
| app-cdn-test.app.snowflake.com | 162.159.134.73 | HTTP:301 | HTTPS:200 |
| apps-api.c1.ap-southeast-1.aws.app.snowflake.com | 18.136.230.11 | HTTP:301 | HTTPS:200 |
| apps-api.c1.canadacentral.azure.app.snowflake.com | 20.175.138.212 | HTTP:301 | HTTPS:200 |
| apps-api.c1.centralus.azure.app.snowflake.com | 20.112.246.224 | HTTP:301 | HTTPS:200 |
| apps-api.c1.eastus2.azure.app.snowflake.com | 20.22.28.149 | HTTP:301 | HTTPS:200 |
| apps-api.c1.eu-west-1.aws.app.snowflake.com | 54.74.163.230 | HTTP:301 | HTTPS:200 |
| apps-api.c1.eu-west-2.aws.app.snowflake.com | 13.42.82.200 | HTTP:301 | HTTPS:200 |
| apps-api.c1.northeurope.azure.app.snowflake.com | 20.223.23.70 | HTTP:301 | HTTPS:200 |

*(Note: Only first 20 results shown. Check resolved_subdomains.txt for complete list)*

---

## 3. Technology Stack

Identified technologies across discovered subdomains:

[*] Scanning app-cdn-blue.app.snowflake.com
app-cdn-blue.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning app-cdn-green.app.snowflake.com
app-cdn-green.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning app-cdn-staging.app.snowflake.com
app-cdn-staging.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning app-cdn-test.app.snowflake.com
app-cdn-test.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.ap-southeast-1.aws.app.snowflake.com
apps-api.c1.ap-southeast-1.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.canadacentral.azure.app.snowflake.com
apps-api.c1.canadacentral.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.centralus.azure.app.snowflake.com
apps-api.c1.centralus.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.eastus2.azure.app.snowflake.com
apps-api.c1.eastus2.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.eu-west-1.aws.app.snowflake.com
apps-api.c1.eu-west-1.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.eu-west-2.aws.app.snowflake.com
apps-api.c1.eu-west-2.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.northeurope.azure.app.snowflake.com
apps-api.c1.northeurope.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.uksouth.azure.app.snowflake.com
apps-api.c1.uksouth.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.us-central1.gcp.app.snowflake.com
apps-api.c1.us-central1.gcp.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.us-east-1.aws.app.snowflake.com
apps-api.c1.us-east-1.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.us-east-2.aws.app.snowflake.com
apps-api.c1.us-east-2.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.us-west-2.aws.app.snowflake.com
apps-api.c1.us-west-2.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.westeurope.azure.app.snowflake.com
apps-api.c1.westeurope.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning apps-api.c1.westus2.azure.app.snowflake.com
apps-api.c1.westus2.azure.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning cleanroom.c1.us-east-1.aws.app.snowflake.com
cleanroom.c1.us-east-1.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies:  React
[*] Scanning client-telemetry.c1.us-west-2.aws.app.snowflake.com
client-telemetry.c1.us-west-2.aws.app.snowflake.com | Server: _ | Powered-By: None | Technologies: None detected
[*] Scanning kalitest.sandbox1.us-west-2.aws-dev.app.snowflake.com
kalitest.sandbox1.us-west-2.aws-dev.app.snowflake.com | Server: CloudFront | Powered-By: None | Technologies: None detected
[*] Scanning preprod.app.snowflake.com
preprod.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning proxy.app.snowflake.com
proxy.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning r2-static.preprod.app.snowflake.com
r2-static.preprod.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React
[*] Scanning staging.app.snowflake.com
staging.app.snowflake.com | Server: cloudflare | Powered-By: None | Technologies:  React

---

## 4. Security Analysis

### 4.1 Security Headers Assessment

Security Header Analysis Report
Generated: Sat Jan 24 06:26:47 UTC 2026
=====================================

### app-cdn-blue.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### app-cdn-green.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### app-cdn-staging.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### app-cdn-test.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.ap-southeast-1.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.canadacentral.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.centralus.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.eastus2.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.eu-west-1.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.eu-west-2.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.northeurope.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.uksouth.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.us-central1.gcp.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.us-east-1.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.us-east-2.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.us-west-2.aws.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.westeurope.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### apps-api.c1.westus2.azure.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### cleanroom.c1.us-east-1.aws.app.snowflake.com ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### client-telemetry.c1.us-west-2.aws.app.snowflake.com ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### kalitest.sandbox1.us-west-2.aws-dev.app.snowflake.com ###
[✗] HSTS: Missing
[✗] X-Frame-Options: Missing
[✗] X-Content-Type-Options: Missing
[✗] CSP: Missing
[✗] X-XSS-Protection: Missing
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### preprod.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### proxy.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### r2-static.preprod.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing

### staging.app.snowflake.com ###
[✓] HSTS: Present
[✗] X-Frame-Options: Missing
[✓] X-Content-Type-Options: Present
[✓] CSP: Present
[✓] X-XSS-Protection: Present
[✗] Referrer-Policy: Missing
[✗] Permissions-Policy: Missing


### 4.2 SSL/TLS Certificate Analysis

SSL/TLS Analysis Report
Generated: Sat Jan 24 06:26:54 UTC 2026
=============================

### app-cdn-blue.app.snowflake.com ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 104.18.6.151

Testing SSL server app-cdn-blue.app.snowflake.com on port 443 using SNI name app-cdn-blue.app.snowflake.com

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
Preferred TLSv1.2  256 bits  ECDHE-ECDSA-CHACHA20-POLY1305 Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-GCM-SHA256 Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-SHA        Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-GCM-SHA384 Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-SHA        Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-SHA256     Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-SHA384     Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-RSA-CHACHA20-POLY1305   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-GCM-SHA256   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-SHA          Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  AES128-GCM-SHA256            
Accepted  TLSv1.2  128 bits  AES128-SHA                   
Accepted  TLSv1.2  256 bits  ECDHE-RSA-AES256-GCM-SHA384   Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-RSA-AES256-SHA          Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  AES256-GCM-SHA384            
Accepted  TLSv1.2  256 bits  AES256-SHA                   
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-SHA256       Curve 25519 DHE 253

### app-cdn-green.app.snowflake.com ###
Version: 2.1.2
OpenSSL 3.0.13 30 Jan 2024

Connected to 104.18.17.245

Testing SSL server app-cdn-green.app.snowflake.com on port 443 using SNI name app-cdn-green.app.snowflake.com

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
Preferred TLSv1.2  256 bits  ECDHE-ECDSA-CHACHA20-POLY1305 Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-GCM-SHA256 Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-SHA        Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-GCM-SHA384 Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-SHA        Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-ECDSA-AES128-SHA256     Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-ECDSA-AES256-SHA384     Curve 25519 DHE 253
Accepted  TLSv1.2  256 bits  ECDHE-RSA-CHACHA20-POLY1305   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-GCM-SHA256   Curve 25519 DHE 253
Accepted  TLSv1.2  128 bits  ECDHE-RSA-AES128-SHA          Curve 25519 DHE 253

*(Note: Truncated. Check ssl_analysis.txt for complete results)*

### 4.3 Open Ports

80/tcp   open  http
443/tcp  open  https
8080/tcp open  http-proxy
8443/tcp open  https-alt

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

All raw data and detailed reports are saved in the `bugbounty_reports/app.snowflake.com/` directory:

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

- Workflow Run: https://github.com/shubham21155102/target-dns/actions/runs/21310619538
- Contributor: @shubham21155102
- Scan Date: Sat Jan 24 06:33:07 UTC 2026
