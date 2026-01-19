# Examples

This document provides practical examples of using the DNS Reconnaissance Tool.

## Basic Usage

### 1. Simple Domain Scan

```bash
python dns_recon.py google.com
```

This will:
- Query all DNS records (A, AAAA, MX, TXT, NS, CNAME, SOA)
- Perform WHOIS lookup
- Enumerate common subdomains
- Generate a report in `reports/` directory

### 2. Using the Quick Run Script

```bash
./run.sh example.com
```

This script automatically:
- Checks for dependencies
- Installs them if missing
- Runs the reconnaissance
- Shows the report location

### 3. Using Configuration File

Edit `config.yaml`:
```yaml
target_domain: mywebsite.com
report_format: markdown
```

Then run without arguments:
```bash
python dns_recon.py
```

## Advanced Usage

### Custom Report Format

Edit `config.yaml` to change the report format:

```yaml
report_format: json  # Options: markdown, json, text
```

### Custom Subdomain Wordlist

Add more subdomains to enumerate in `config.yaml`:

```yaml
subdomain_wordlist:
  - www
  - mail
  - ftp
  - api
  - dev
  - test
  - staging
  - admin
  - portal
  - blog
  - shop
  - store
  - cdn
  - assets
  - images
```

### Disable Subdomain Enumeration

To skip subdomain enumeration:

```yaml
enable_subdomain_enum: false
```

## GitHub Actions Workflow

### Automated Report Generation

1. Go to your GitHub repository
2. Click on **Actions** tab
3. Select **DNS Reconnaissance Report**
4. Click **Run workflow**
5. Enter the target domain (e.g., `example.com`)
6. Select report format
7. Click **Run workflow**

The workflow will:
- Run the DNS reconnaissance
- Generate the report
- Upload it as an artifact (accessible for 30 days)
- Commit the report back to the repository

### Downloading Reports

After workflow completion:
1. Go to the workflow run
2. Scroll to **Artifacts** section
3. Download `dns-report-<domain>` artifact

## Sample Output Examples

### Console Output

```
╔══════════════════════════════════════════════════════════╗
║           DNS Reconnaissance Tool                        ║
║           Target Domain: google.com                      ║
╚══════════════════════════════════════════════════════════╝

[+] Querying DNS Records...
  ✓ A: 6 record(s) found
  ✓ AAAA: 4 record(s) found
  ✓ MX: 1 record(s) found
  ✓ TXT: 12 record(s) found
  ✓ NS: 4 record(s) found
  ○ CNAME: No records found
  ✓ SOA: 1 record(s) found

[+] Querying WHOIS Information...
  ✓ WHOIS information retrieved
    Registrar: MarkMonitor, Inc.
    Created: 1997-09-15T00:00:00

[+] Enumerating Subdomains...
  ✓ Found: www.google.com -> 142.250.185.36
  ✓ Found: mail.google.com -> 142.250.185.37

  Total subdomains found: 2

[+] Performing Reverse DNS Lookups...
  ✓ 142.250.185.36 -> lga34s32-in-f4.1e100.net.

[✓] Report generated successfully: reports/google.com_20240119_120000.md
```

### Markdown Report (excerpt)

```markdown
# DNS Reconnaissance Report

**Target Domain:** google.com
**Generated:** 2024-01-19T12:00:00

---

## DNS Records

### A Records
- `172.253.62.138`
- `172.253.62.139`

### MX Records
- `10 smtp.google.com.`

## Discovered Subdomains

| Subdomain | IP Addresses |
|-----------|-------------|
| www.google.com | 142.251.163.99 |
| mail.google.com | 142.251.163.83 |
```

## Common Use Cases

### 1. Reconnaissance Before Deployment

Check DNS configuration before deploying a new application:
```bash
python dns_recon.py mynewapp.com
```

### 2. Security Assessment

Enumerate subdomains to identify potential attack surfaces:
```bash
python dns_recon.py target-domain.com
```

### 3. Infrastructure Monitoring

Regular DNS checks to monitor infrastructure changes:
```bash
# Run via cron or GitHub Actions
python dns_recon.py mywebsite.com
```

### 4. Domain Takeover Detection

Check for subdomain availability and potential takeover risks:
```bash
python dns_recon.py client-domain.com
```

## Troubleshooting

### DNS Resolution Errors

If you encounter DNS resolution errors:
```
✗ A: Error - All nameservers failed to answer
```

This might be due to:
- Network issues
- Domain doesn't exist
- DNS server rate limiting

### WHOIS Lookup Failures

WHOIS lookups might fail due to:
- Network restrictions
- WHOIS server rate limiting
- Domain privacy protection

The tool will continue and generate a report with available data.

### Permission Errors

If you get permission errors when creating reports:
```bash
mkdir -p reports
chmod 755 reports
```

## Integration Examples

### CI/CD Integration

Add to your CI pipeline:

```yaml
# .github/workflows/ci.yml
- name: DNS Check
  run: |
    pip install -r requirements.txt
    python dns_recon.py ${{ env.DOMAIN }}
```

### Python Script Integration

```python
from dns_recon import DNSRecon

# Create instance
recon = DNSRecon('example.com')

# Run scan
recon.run_full_scan()

# Generate report
recon.generate_report(format='json')

# Access results
print(recon.results)
```

## Tips and Best Practices

1. **Rate Limiting**: Be mindful of DNS query rate limits
2. **Permission**: Always ensure you have permission to scan the target
3. **Regular Scans**: Schedule regular scans to monitor changes
4. **Report Storage**: Archive reports for historical comparison
5. **Custom Wordlists**: Use targeted wordlists for better results
