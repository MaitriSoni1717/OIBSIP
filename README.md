# OIBSIP
# Task 1 - Basic Network Scanning with Nmap

## Objective

The objective of this task was to perform network scanning using Nmap to identify open ports, detect running services, and gather operating system information from a target machine. The scan results were analyzed to understand potential security risks associated with exposed services.

---

## Tools Used

* Kali Linux
* Nmap
* VirtualBox
* Linux Terminal

---

## What is Nmap?

Nmap (Network Mapper) is a free and open-source network scanning tool used by cybersecurity professionals and network administrators to discover hosts, identify open ports, detect running services, and perform security assessments.

---

## Why Network Scanning Matters

Network scanning is important because it helps to:

* Identify active devices on a network
* Discover open ports and running services
* Detect unnecessary or vulnerable services
* Understand the attack surface of a system
* Improve overall network security

---

## Nmap Installation

Nmap comes pre-installed with Kali Linux.

To verify installation:

```bash
nmap --version
```

If Nmap is not installed:

```bash
sudo apt update
sudo apt install nmap
```

---

## Target Information

The target scanned during this task was:

* IP Address: 10.149.212.234
* Environment: Kali Linux Virtual Machine
* Scan Type: Local Network Scan

**Ethical Notice:** All scans were performed on systems owned and controlled by the tester. No external, public, or production systems were scanned.

---

## Commands Used

### Basic Scan

```bash
nmap 10.149.212.234
```

Purpose:

* Identifies open ports on the target system.

### Service Version Detection

```bash
nmap -sV 10.149.212.234
```

Purpose:

* Detects the version of services running on open ports.

### Operating System Detection

```bash
sudo nmap -O 10.149.212.234
```

Purpose:

* Attempts to identify the operating system of the target machine.

---

## Scan Results Summary

| Port     | State | Service | Version                              |
| -------- | ----- | ------- | ------------------------------------ |
| 8080/tcp | Open  | HTTP    | SimpleHTTPServer 0.6 (Python 3.13.3) |

### Operating System Detection

* Device Type: General Purpose
* Operating System: Linux
* OS Details: Linux 2.6.32, Linux 5.0 – 6.2

---

## Security Analysis

### Port 8080 - HTTP Service

**Purpose:**

* Port 8080 is commonly used for web servers, development servers, and web applications.
* In this scan, the service running was Python SimpleHTTPServer.

**Potential Security Risks:**

* Data transmitted over HTTP is not encrypted.
* Sensitive information may be exposed if directory listing is enabled.
* Misconfigured web servers can expose files unintentionally.
* Attackers may target outdated web applications running on the server.

**Recommended Mitigations:**

* Use HTTPS instead of HTTP whenever possible.
* Restrict access to authorized users only.
* Keep web applications and services updated.
* Disable unnecessary services when not required.

---

## Findings

* The target host was reachable and active.
* One open port (8080/tcp) was identified.
* Service version detection revealed Python SimpleHTTPServer 0.6.
* Operating system detection indicated a Linux-based system.
* The open HTTP service could present security risks if improperly configured.

---

## Files Included

* README.md
* nmap_scan_results.txt
* Screenshots of Nmap scans
* Supporting documentation

---

## Ethical Use Guidelines

Nmap is a powerful network security assessment tool and must be used responsibly.

### Rules Followed

* Scanned only systems owned by the tester.
* Used a controlled lab environment.
* Did not scan public websites or external networks.
* Followed ethical cybersecurity practices.

Unauthorized scanning of systems without permission may violate organizational policies and applicable laws.

---

## Conclusion

This task demonstrated how Nmap can be used to identify open ports, detect running services, and perform operating system detection. The scan successfully identified an active HTTP service running on port 8080 and determined that the target system was Linux-based. Network scanning is a fundamental cybersecurity practice that helps organizations understand their exposure and improve security by identifying and securing unnecessary services.
