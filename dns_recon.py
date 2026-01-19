#!/usr/bin/env python3
"""
DNS Reconnaissance Tool
Performs comprehensive DNS analysis on a target domain
"""

import dns.resolver
import dns.reversename
import dns.zone
import dns.query
import whois
import socket
import json
import yaml
import os
import sys
from datetime import datetime
from pathlib import Path
from colorama import Fore, Style, init

# Initialize colorama
init(autoreset=True)


class DNSRecon:
    """DNS Reconnaissance class for gathering domain information"""
    
    def __init__(self, domain, config=None):
        self.domain = domain.strip().lower()
        self.config = config or {}
        self.results = {
            'domain': self.domain,
            'timestamp': datetime.now().isoformat(),
            'dns_records': {},
            'whois_info': {},
            'subdomains': [],
            'ip_addresses': []
        }
        self.resolver = dns.resolver.Resolver()
        
    def print_banner(self):
        """Print tool banner"""
        banner = f"""
{Fore.CYAN}╔══════════════════════════════════════════════════════════╗
║           DNS Reconnaissance Tool                        ║
║           Target Domain: {self.domain:<30} ║
╚══════════════════════════════════════════════════════════╝{Style.RESET_ALL}
"""
        print(banner)
    
    def lookup_dns_records(self, record_types=None):
        """Lookup DNS records for the domain"""
        if record_types is None:
            record_types = ['A', 'AAAA', 'MX', 'TXT', 'NS', 'CNAME', 'SOA']
        
        print(f"\n{Fore.YELLOW}[+] Querying DNS Records...{Style.RESET_ALL}")
        
        for record_type in record_types:
            try:
                answers = self.resolver.resolve(self.domain, record_type)
                records = []
                for rdata in answers:
                    if record_type == 'MX':
                        records.append(f"{rdata.preference} {rdata.exchange}")
                    elif record_type == 'SOA':
                        records.append(f"mname={rdata.mname} rname={rdata.rname} serial={rdata.serial}")
                    else:
                        records.append(str(rdata))
                
                self.results['dns_records'][record_type] = records
                print(f"  {Fore.GREEN}✓{Style.RESET_ALL} {record_type}: {len(records)} record(s) found")
                
            except dns.resolver.NoAnswer:
                self.results['dns_records'][record_type] = []
                print(f"  {Fore.YELLOW}○{Style.RESET_ALL} {record_type}: No records found")
            except dns.resolver.NXDOMAIN:
                print(f"  {Fore.RED}✗{Style.RESET_ALL} Domain does not exist")
                return False
            except Exception as e:
                self.results['dns_records'][record_type] = []
                print(f"  {Fore.RED}✗{Style.RESET_ALL} {record_type}: Error - {str(e)}")
        
        # Extract IP addresses from A and AAAA records
        if 'A' in self.results['dns_records']:
            self.results['ip_addresses'].extend(self.results['dns_records']['A'])
        if 'AAAA' in self.results['dns_records']:
            self.results['ip_addresses'].extend(self.results['dns_records']['AAAA'])
        
        return True
    
    def lookup_whois(self):
        """Lookup WHOIS information"""
        print(f"\n{Fore.YELLOW}[+] Querying WHOIS Information...{Style.RESET_ALL}")
        
        try:
            w = whois.whois(self.domain)
            whois_data = {}
            
            # Extract relevant WHOIS information
            fields = ['domain_name', 'registrar', 'whois_server', 'creation_date', 
                     'expiration_date', 'updated_date', 'status', 'name_servers',
                     'emails', 'org', 'country']
            
            for field in fields:
                value = getattr(w, field, None)
                if value:
                    # Convert datetime objects to strings
                    if isinstance(value, datetime):
                        value = value.isoformat()
                    elif isinstance(value, list):
                        value = [str(v) for v in value]
                    else:
                        value = str(value)
                    whois_data[field] = value
            
            self.results['whois_info'] = whois_data
            print(f"  {Fore.GREEN}✓{Style.RESET_ALL} WHOIS information retrieved")
            
            if 'registrar' in whois_data:
                print(f"  {Fore.CYAN}  Registrar: {whois_data['registrar']}{Style.RESET_ALL}")
            if 'creation_date' in whois_data:
                print(f"  {Fore.CYAN}  Created: {whois_data['creation_date']}{Style.RESET_ALL}")
                
        except Exception as e:
            print(f"  {Fore.RED}✗{Style.RESET_ALL} WHOIS lookup failed: {str(e)}")
            self.results['whois_info'] = {'error': str(e)}
    
    def enumerate_subdomains(self, wordlist=None):
        """Basic subdomain enumeration"""
        if wordlist is None:
            wordlist = ['www', 'mail', 'ftp', 'api', 'dev', 'test', 'staging']
        
        print(f"\n{Fore.YELLOW}[+] Enumerating Subdomains...{Style.RESET_ALL}")
        
        found_subdomains = []
        for subdomain in wordlist:
            full_domain = f"{subdomain}.{self.domain}"
            try:
                answers = self.resolver.resolve(full_domain, 'A')
                ips = [str(rdata) for rdata in answers]
                found_subdomains.append({
                    'subdomain': full_domain,
                    'ips': ips
                })
                print(f"  {Fore.GREEN}✓{Style.RESET_ALL} Found: {full_domain} -> {', '.join(ips)}")
            except:
                pass
        
        self.results['subdomains'] = found_subdomains
        print(f"\n  {Fore.CYAN}Total subdomains found: {len(found_subdomains)}{Style.RESET_ALL}")
    
    def reverse_dns_lookup(self):
        """Perform reverse DNS lookups on discovered IPs"""
        print(f"\n{Fore.YELLOW}[+] Performing Reverse DNS Lookups...{Style.RESET_ALL}")
        
        reverse_dns = {}
        for ip in self.results['ip_addresses']:
            try:
                rev_name = dns.reversename.from_address(ip)
                answers = self.resolver.resolve(rev_name, "PTR")
                ptr_records = [str(rdata) for rdata in answers]
                reverse_dns[ip] = ptr_records
                print(f"  {Fore.GREEN}✓{Style.RESET_ALL} {ip} -> {', '.join(ptr_records)}")
            except:
                reverse_dns[ip] = []
        
        self.results['reverse_dns'] = reverse_dns
    
    def run_full_scan(self):
        """Run complete DNS reconnaissance"""
        self.print_banner()
        
        # DNS Records Lookup
        if not self.lookup_dns_records(self.config.get('dns_records', None)):
            return False
        
        # WHOIS Lookup
        self.lookup_whois()
        
        # Subdomain Enumeration
        if self.config.get('enable_subdomain_enum', True):
            self.enumerate_subdomains(self.config.get('subdomain_wordlist', None))
        
        # Reverse DNS
        if self.results['ip_addresses']:
            self.reverse_dns_lookup()
        
        return True
    
    def generate_report(self, format='markdown', output_dir='reports'):
        """Generate report in specified format"""
        Path(output_dir).mkdir(exist_ok=True)
        
        timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
        filename = f"{self.domain}_{timestamp}"
        
        if format == 'markdown':
            filepath = os.path.join(output_dir, f"{filename}.md")
            self._generate_markdown_report(filepath)
        elif format == 'json':
            filepath = os.path.join(output_dir, f"{filename}.json")
            self._generate_json_report(filepath)
        else:
            filepath = os.path.join(output_dir, f"{filename}.txt")
            self._generate_text_report(filepath)
        
        print(f"\n{Fore.GREEN}[✓] Report generated successfully: {filepath}{Style.RESET_ALL}")
        return filepath
    
    def _generate_markdown_report(self, filepath):
        """Generate markdown report"""
        with open(filepath, 'w') as f:
            f.write(f"# DNS Reconnaissance Report\n\n")
            f.write(f"**Target Domain:** {self.domain}\n\n")
            f.write(f"**Generated:** {self.results['timestamp']}\n\n")
            f.write("---\n\n")
            
            # DNS Records
            f.write("## DNS Records\n\n")
            for record_type, records in self.results['dns_records'].items():
                f.write(f"### {record_type} Records\n\n")
                if records:
                    for record in records:
                        f.write(f"- `{record}`\n")
                else:
                    f.write("- *No records found*\n")
                f.write("\n")
            
            # WHOIS Information
            f.write("## WHOIS Information\n\n")
            if self.results['whois_info']:
                for key, value in self.results['whois_info'].items():
                    f.write(f"**{key.replace('_', ' ').title()}:** {value}\n\n")
            else:
                f.write("*No WHOIS information available*\n\n")
            
            # Subdomains
            f.write("## Discovered Subdomains\n\n")
            if self.results['subdomains']:
                f.write("| Subdomain | IP Addresses |\n")
                f.write("|-----------|-------------|\n")
                for sub in self.results['subdomains']:
                    ips = ', '.join(sub['ips'])
                    f.write(f"| {sub['subdomain']} | {ips} |\n")
            else:
                f.write("*No subdomains discovered*\n")
            f.write("\n")
            
            # Reverse DNS
            if 'reverse_dns' in self.results:
                f.write("## Reverse DNS Lookups\n\n")
                if self.results['reverse_dns']:
                    for ip, ptrs in self.results['reverse_dns'].items():
                        ptr_list = ', '.join(ptrs) if ptrs else '*No PTR records*'
                        f.write(f"**{ip}:** {ptr_list}\n\n")
                else:
                    f.write("*No reverse DNS information available*\n\n")
    
    def _generate_json_report(self, filepath):
        """Generate JSON report"""
        with open(filepath, 'w') as f:
            json.dump(self.results, f, indent=2)
    
    def _generate_text_report(self, filepath):
        """Generate plain text report"""
        with open(filepath, 'w') as f:
            f.write("=" * 60 + "\n")
            f.write("DNS RECONNAISSANCE REPORT\n")
            f.write("=" * 60 + "\n\n")
            f.write(f"Target Domain: {self.domain}\n")
            f.write(f"Generated: {self.results['timestamp']}\n\n")
            
            # DNS Records
            f.write("-" * 60 + "\n")
            f.write("DNS RECORDS\n")
            f.write("-" * 60 + "\n\n")
            for record_type, records in self.results['dns_records'].items():
                f.write(f"{record_type} Records:\n")
                if records:
                    for record in records:
                        f.write(f"  - {record}\n")
                else:
                    f.write("  - No records found\n")
                f.write("\n")
            
            # WHOIS Information
            f.write("-" * 60 + "\n")
            f.write("WHOIS INFORMATION\n")
            f.write("-" * 60 + "\n\n")
            if self.results['whois_info']:
                for key, value in self.results['whois_info'].items():
                    f.write(f"{key.replace('_', ' ').title()}: {value}\n")
            else:
                f.write("No WHOIS information available\n")
            f.write("\n")
            
            # Subdomains
            f.write("-" * 60 + "\n")
            f.write("DISCOVERED SUBDOMAINS\n")
            f.write("-" * 60 + "\n\n")
            if self.results['subdomains']:
                for sub in self.results['subdomains']:
                    ips = ', '.join(sub['ips'])
                    f.write(f"{sub['subdomain']}: {ips}\n")
            else:
                f.write("No subdomains discovered\n")


def load_config(config_path='config.yaml'):
    """Load configuration from YAML file"""
    if os.path.exists(config_path):
        with open(config_path, 'r') as f:
            return yaml.safe_load(f)
    return {}


def main():
    """Main function"""
    # Load configuration
    config = load_config()
    
    # Get target domain from command line or config
    if len(sys.argv) > 1:
        domain = sys.argv[1]
    else:
        domain = config.get('target_domain', '')
    
    if not domain or domain == 'example.com':
        print(f"{Fore.RED}Error: Please provide a target domain{Style.RESET_ALL}")
        print(f"Usage: python dns_recon.py <domain>")
        print(f"   or: Update target_domain in config.yaml and run without arguments")
        sys.exit(1)
    
    # Create DNS recon instance
    recon = DNSRecon(domain, config)
    
    # Run full scan
    success = recon.run_full_scan()
    
    if success:
        # Generate report
        report_format = config.get('report_format', 'markdown')
        output_dir = config.get('output_directory', 'reports')
        recon.generate_report(format=report_format, output_dir=output_dir)
    else:
        print(f"\n{Fore.RED}[✗] Scan failed for domain: {domain}{Style.RESET_ALL}")
        sys.exit(1)


if __name__ == '__main__':
    main()
