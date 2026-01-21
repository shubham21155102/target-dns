# Bug Bounty Reconnaissance Automation

Automated bug bounty reconnaissance workflow inspired by [reconftw](https://github.com/six2dez/reconftw). This workflow performs comprehensive security reconnaissance on target domains and generates detailed bug bounty reports.

## 🎯 Features

The Bug Bounty Reconnaissance workflow includes:

### 1. **DNS Reconnaissance**
- Complete DNS record analysis (A, AAAA, MX, TXT, NS, CNAME, SOA)
- WHOIS domain registration information
- Reverse DNS lookups
- Zone transfer checks

### 2. **Subdomain Enumeration**
- **Passive Discovery**:
  - Certificate Transparency logs (crt.sh)
  - DNS aggregator queries (Omnisint, HackerTarget)
  - Search engine enumeration
- **Active Discovery** (optional):
  - DNS bruteforcing with common subdomains
  - Wordlist-based enumeration

### 3. **Web Service Analysis**
- HTTP/HTTPS probing with status code detection
- Alive domain identification
- Virtual host detection
- Technology stack fingerprinting

### 4. **Security Assessment**
- Security headers analysis (HSTS, CSP, X-Frame-Options, etc.)
- SSL/TLS certificate validation
- SSL configuration scanning
- Missing header identification

### 5. **Network Scanning** (Deep Scan)
- Top 100 port scanning
- Service version detection
- Open port enumeration

## 🚀 Usage

### Via GitHub Actions

1. **Navigate to your repository** on GitHub
2. **Go to**: Actions → Bug Bounty Reconnaissance Automation
3. **Click**: "Run workflow"
4. **Configure**:
   - **Target Domain**: Enter the domain (e.g., `example.com`)
   - **Deep Scan**: Enable for comprehensive port scanning (slower)
   - **Enable Subdomain Bruteforce**: Toggle active subdomain discovery
   - **Report Format**: Choose markdown, JSON, or HTML
5. **Click**: "Run workflow"

### Workflow Inputs

| Input | Description | Required | Default |
|-------|-------------|----------|---------|
| `target_domain` | Target domain for reconnaissance | Yes | - |
| `deep_scan` | Enable comprehensive port scanning | No | false |
| `enable_subdomain_bruteforce` | Enable active subdomain bruteforcing | No | true |
| `report_format` | Output format (markdown/json/html) | No | markdown |

## 📁 Output Structure

All generated files are organized in the `bugbounty_reports/<domain>/` directory:

```
bugbounty_reports/
└── example.com/
    ├── BUG_BOUNTY_REPORT_20240120_120000.md    # Main comprehensive report
    ├── subdomains/
    │   ├── all_subdomains_final.txt            # All discovered subdomains
    │   ├── resolved_subdomains.txt             # IP addresses and HTTP status
    │   ├── alive_subdomains.txt                # Domains with active web services
    │   ├── technologies.txt                    # Technology fingerprinting
    │   ├── crt_subdomains.txt                  # Certificate Transparency results
    │   └── bruteforce_subdomains.txt           # Active bruteforce results
    ├── vulnerabilities/
    │   ├── security_headers_analysis.txt       # Security header assessment
    │   ├── ssl_analysis.txt                    # SSL/TLS certificate analysis
    │   ├── nmap_top100.txt                     # Port scan results (deep scan)
    │   └── open_ports_summary.txt              # Open ports summary
    ├── screenshots/                             # Placeholder for screenshots
    └── assets/                                  # Additional assets
```

## 📊 Report Sections

The generated bug bounty report includes:

### 1. Executive Summary
- Quick statistics and overview
- High-level findings summary

### 2. DNS Reconnaissance
- Complete DNS record analysis
- WHOIS information
- DNS security assessment

### 3. Subdomain Enumeration
- Total discovered subdomains
- Alive domains with HTTP status codes
- Resolved IP addresses

### 4. Technology Stack
- Identified frameworks and technologies
- Server information
- Powered-by headers

### 5. Security Analysis
- Security headers assessment
- SSL/TLS certificate analysis
- Potential vulnerabilities

### 6. Recommendations
- Security improvement suggestions
- Best practices

### 7. Methodology
- Detailed explanation of reconnaissance methods
- Tools and techniques used

## 🔧 Tools Used

The workflow utilizes:

### Built-in Tools
- `dns_recon.py` - Custom DNS reconnaissance script
- `host` - DNS lookup utility
- `curl` - HTTP client for probing
- `jq` - JSON processor

### Security Tools (installed during workflow)
- `nmap` - Network port scanner
- `masscan` - High-speed port scanner
- `sslscan` - SSL/TLS configuration scanner
- `whois` - Domain registration lookup

### External APIs
- crt.sh - Certificate Transparency logs
- sonar.omnisint.io - Subdomain discovery
- hackertarget.com - DNS aggregator

## 🛡️ Legal & Ethical Usage

**IMPORTANT**: This tool is intended for **authorized security testing only**.

- ✓ Use on domains you own or have explicit permission to test
- ✓ Use for educational purposes and bug bounty programs
- ✗ Do NOT use on targets without authorization
- ✗ Do NOT use for malicious purposes

**You are responsible for ensuring you have proper authorization before testing any target.**

## 📝 Example Workflow Run

### Input
```
Target Domain: example.com
Deep Scan: true
Subdomain Bruteforce: true
Report Format: markdown
```

### Output
```
[✓] DNS reconnaissance complete
[✓] Discovered 1,247 subdomains
[✓] Found 342 alive domains
[✓] Identified 156 missing security headers
[✓] Generated comprehensive bug bounty report
```

## 🔍 Next Steps for Bug Bounty Hunters

After receiving the automated report:

1. **Manual Verification**
   - Verify all automated findings
   - Test for false positives
   - Validate security issues

2. **Deep Vulnerability Scanning**
   - Use tools like Nuclei for vulnerability detection
   - Run Burp Suite for web application testing
   - Perform manual testing for business logic flaws

3. **Endpoint Discovery**
   - Hunt for hidden endpoints
   - Discover undocumented APIs
   - Find parameter injection points

4. **Authentication & Authorization**
   - Test authentication mechanisms
   - Check authorization bypasses
   - Test session management

5. **Submit Valid Bugs**
   - Document findings with proof of concept
   - Submit to bug bounty platform
   - Include clear reproduction steps

## 🆚 Comparison: Bug Bounty Workflow vs Basic DNS Workflow

| Feature | Basic DNS Workflow | Bug Bounty Workflow |
|---------|-------------------|---------------------|
| DNS Records | ✓ | ✓ |
| WHOIS | ✓ | ✓ |
| Subdomain Enumeration | Basic (wordlist) | Advanced (CT logs, aggregators, bruteforce) |
| HTTP Probing | ✗ | ✓ |
| Technology Fingerprinting | ✗ | ✓ |
| Security Headers | ✗ | ✓ |
| SSL/TLS Analysis | ✗ | ✓ |
| Port Scanning | ✗ | ✓ (deep scan) |
| Report Format | Basic | Comprehensive bug bounty report |

## 🤝 Contributing

Contributor: **@shubham21155102**

This workflow is actively maintained. Contributions are welcome!

### Ways to Contribute
- Report bugs or issues
- Suggest new reconnaissance techniques
- Submit pull requests for improvements
- Add new security checks

## 📜 License

This project is open source and available for educational purposes.

## 🙏 Acknowledgments

Inspired by:
- [reconftw](https://github.com/six2dez/reconftw) - Comprehensive automated reconnaissance tool
- [Argus](https://github.com/jasonxtn/argus) - Information gathering toolkit

## 🔗 Links

- **Repository**: https://github.com/shubham21155102/target-dns
- **Bug Bounty Workflow**: `.github/workflows/bug-bounty.yml`
- **Documentation**: `BUG_BOUNTY_WORKFLOW.md`

---

**Remember**: Always follow ethical guidelines and obtain proper authorization before testing. Happy hunting! 🎯
