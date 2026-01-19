# target-dns

An automated DNS reconnaissance tool that generates comprehensive reports for target domains. Simply provide a domain name and get detailed DNS analysis, WHOIS information, subdomain enumeration, and more.

## 🚀 Features

- **DNS Records Analysis**: Query A, AAAA, MX, TXT, NS, CNAME, and SOA records
- **WHOIS Lookup**: Retrieve domain registration information
- **Subdomain Enumeration**: Discover common subdomains
- **Reverse DNS Lookup**: Perform PTR record queries
- **Multiple Report Formats**: Generate reports in Markdown, JSON, or plain text
- **Automated Pipeline**: GitHub Actions workflow for automated report generation
- **Simple CLI**: Easy-to-use command-line interface

## 📋 Installation

### Local Usage

1. **Clone the repository**:
```bash
git clone https://github.com/shubham21155102/target-dns.git
cd target-dns
```

2. **Install dependencies**:
```bash
pip install -r requirements.txt
```

3. **Run the tool**:
```bash
python dns_recon.py example.com
```

## 🎯 Usage

### Command Line

You can run the DNS reconnaissance tool directly from the command line:

```bash
python dns_recon.py <domain-name>
```

**Example**:
```bash
python dns_recon.py shubhamiitbhu.in
```

### Configuration File

Alternatively, you can set the target domain in `config.yaml` and run without arguments:

```bash
python dns_recon.py
```

Edit `config.yaml` to customize:
```yaml
target_domain: example.com
report_format: markdown  # options: markdown, text, json
output_directory: reports
enable_subdomain_enum: true
```

### GitHub Actions Workflow

For automated report generation in the cloud:

1. **Go to your repository on GitHub**
2. **Navigate to**: Actions → DNS Reconnaissance Report
3. **Click**: "Run workflow"
4. **Enter**: Target domain name (e.g., `example.com`)
5. **Select**: Report format (markdown, text, or json)
6. **Click**: "Run workflow"

The workflow will:
- Run the DNS reconnaissance
- Generate a report
- Upload it as an artifact
- Commit the report to the repository

## 📊 Sample Output

The tool will generate comprehensive reports including:

### DNS Records
- A records (IPv4 addresses)
- AAAA records (IPv6 addresses)
- MX records (Mail servers)
- TXT records (Text records)
- NS records (Name servers)
- CNAME records (Canonical names)
- SOA records (Start of Authority)

### WHOIS Information
- Domain registrar
- Registration dates
- Expiration dates
- Name servers
- Contact information

### Subdomain Discovery
- Common subdomains (www, mail, api, etc.)
- IP addresses for each subdomain

### Reverse DNS
- PTR records for discovered IP addresses

## 📁 Report Location

Reports are saved in the `reports/` directory with timestamps:
- Markdown: `reports/<domain>_<timestamp>.md`
- JSON: `reports/<domain>_<timestamp>.json`
- Text: `reports/<domain>_<timestamp>.txt`

## 🔧 Configuration

You can customize the tool behavior in `config.yaml`:

```yaml
# Target domain
target_domain: example.com

# Report settings
report_format: markdown
output_directory: reports

# DNS record types to query
dns_records:
  - A
  - AAAA
  - MX
  - TXT
  - NS
  - CNAME
  - SOA

# Subdomain enumeration
enable_subdomain_enum: true
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
```

## 🛡️ Requirements

- Python 3.7+
- dnspython
- python-whois
- requests
- colorama
- pyyaml

## 📝 Example

```bash
$ python dns_recon.py google.com

╔══════════════════════════════════════════════════════════╗
║           DNS Reconnaissance Tool                        ║
║           Target Domain: google.com                      ║
╚══════════════════════════════════════════════════════════╝

[+] Querying DNS Records...
  ✓ A: 1 record(s) found
  ✓ AAAA: 1 record(s) found
  ✓ MX: 5 record(s) found
  ✓ TXT: 8 record(s) found
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

## ⚠️ Legal Disclaimer

This tool is intended for **educational and ethical use only**. Users must ensure they have explicit permission to perform reconnaissance on target domains. The author is not liable for any misuse of this tool.

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests

## 📜 License

This project is open source and available for educational purposes.

## 🙏 Acknowledgments

Inspired by [Argus](https://github.com/jasonxtn/argus) - A comprehensive information gathering toolkit.