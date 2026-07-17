# Task 2 - Firewall Configuration with UFW

## Objective

The objective of this task was to configure and manage a host-based firewall using UFW (Uncomplicated Firewall) on a Linux system. The firewall rules were configured to allow and block specific network traffic while documenting the configuration and testing process.

---

## Tools Used

- Kali Linux / Ubuntu Linux
- UFW (Uncomplicated Firewall)
- Linux Terminal

---

## What is a Firewall?

A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predefined security rules.

Firewalls help protect systems from unauthorized access, malicious traffic, and network-based attacks.

---

## Why Firewall Configuration Matters

Firewall configuration is important because it helps to:

- Control incoming and outgoing network traffic
- Prevent unauthorized access
- Reduce the attack surface of a system
- Protect services from unwanted connections
- Improve overall system security

---

## UFW Installation

### Update Package List

```bash
sudo apt update
```

### Install UFW

```bash
sudo apt install ufw
```

### Verify Installation

```bash
ufw --version
```

---

## Firewall Configuration

### Enable UFW

```bash
sudo ufw enable
```

### Allow SSH Traffic

```bash
sudo ufw allow ssh
```

**Purpose:**
- Allows remote administration using SSH on port 22.

### Deny HTTP Traffic

```bash
sudo ufw deny http
```

**Purpose:**
- Blocks HTTP traffic on port 80.

### Allow HTTPS Traffic

```bash
sudo ufw allow https
```

**Purpose:**
- Allows secure web traffic over port 443.

### Allow DNS Traffic

```bash
sudo ufw allow 53/udp
```

**Purpose:**
- Allows DNS queries for domain name resolution.

---

## Configured Rules Summary

| Rule | Action | Purpose |
|--------|--------|---------|
| SSH (22) | Allow | Remote administration |
| HTTP (80) | Deny | Block insecure web traffic |
| HTTPS (443) | Allow | Secure web communication |
| DNS (53/UDP) | Allow | Domain name resolution |

---

## Verification

The firewall configuration was verified using:

```bash
sudo ufw status verbose
```

The output confirmed that all configured rules were successfully applied.

---

## Testing Method

### HTTP Blocking Test

A test was performed to verify that HTTP traffic was blocked.

Steps:

1. Configure the firewall rule:

```bash
sudo ufw deny http
```

2. Verify firewall status:

```bash
sudo ufw status verbose
```

3. Confirm that port 80 was listed as denied.

### Result

HTTP traffic was successfully blocked according to the configured firewall rules.

---

## Script Automation

A shell script was created to automate the firewall configuration.

File Location:

```text
scripts/ufw_configuration.sh
```

### Script Contents

```bash
#!/bin/bash

sudo ufw --force enable

sudo ufw allow ssh
sudo ufw deny http
sudo ufw allow https
sudo ufw allow 53/udp

sudo ufw status verbose
```

The script applies all firewall rules automatically and displays the final firewall status.

---

## Project Structure

```text
OIBSIP/
└── CyberSecurity-Task2-FirewallConfiguration/
    ├── README.md
    ├── ufw_configuration.sh
    └── screenshots/
        ├── ufw_install.png
        ├── ufw_rules.png
        
```

---

## Key Findings

- UFW provides a simple interface for firewall management.
- Firewall rules can effectively allow or block network traffic.
- SSH access remained available while HTTP traffic was blocked.
- HTTPS and DNS traffic were permitted for normal network operation.
- Firewall configuration helps strengthen system security.

---

## Ethical and Security Considerations

The firewall configuration was performed only on a controlled system owned by the tester.

The purpose of this task was educational and focused on understanding firewall management and network security best practices.

---

## Conclusion

This task demonstrated how to install, configure, and manage a firewall using UFW. Firewall rules were successfully created to allow SSH, HTTPS, and DNS traffic while blocking HTTP traffic. The configuration was verified and automated using a shell script, improving both security and administrative efficiency.
