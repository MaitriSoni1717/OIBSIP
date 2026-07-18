# Task 4 - Research Report: Common Network Security Threats

# Common Network Security Threats

## Introduction

Network security has become a critical concern for organizations, governments, and individuals due to the increasing number of cyberattacks targeting computer networks and internet-connected systems. Attackers continuously develop new methods to disrupt services, steal sensitive information, and gain unauthorized access to systems. Understanding common network security threats is essential for implementing effective security controls and protecting organizational assets. This report discusses four major network security threats: Distributed Denial-of-Service (DDoS) Attacks, Man-in-the-Middle (MITM) Attacks, IP Spoofing, and DNS Poisoning/Spoofing. For each threat, the report explains how the attack works, its real-world impact, and recommended mitigation strategies.

---

# 1. DoS/DDoS Attacks

## How It Works

A Denial-of-Service (DoS) attack attempts to make a system, server, or network unavailable to legitimate users by overwhelming it with excessive traffic or resource requests.

A Distributed Denial-of-Service (DDoS) attack is a more powerful version where attackers use multiple compromised devices (botnets) to flood the target simultaneously. Because traffic originates from many sources, DDoS attacks are difficult to block.

Attackers commonly use:

- Botnets
- Amplification attacks
- SYN Flood attacks
- UDP Flood attacks
- HTTP Flood attacks

## Real-World Example

In October 2016, the Mirai Botnet launched a massive DDoS attack against DNS provider Dyn. The attack disrupted major online services including Twitter, Netflix, Reddit, GitHub, Spotify, and PayPal. Thousands of insecure Internet of Things (IoT) devices were used to generate malicious traffic.

## Impact

- Service outages
- Financial losses
- Business disruption
- Reputation damage
- Customer dissatisfaction
- Reduced availability of critical services

## Mitigation Strategies

### 1. Deploy DDoS Protection Services

Use cloud-based DDoS mitigation services such as Cloudflare, AWS Shield, or Akamai to absorb malicious traffic.

### 2. Traffic Filtering and Rate Limiting

Configure firewalls and routers to identify and block suspicious traffic patterns.

### 3. Load Balancing and Redundancy

Distribute traffic across multiple servers and data centers to reduce the impact of attacks.

---

# 2. Man-in-the-Middle (MITM) Attacks

## How It Works

A Man-in-the-Middle attack occurs when an attacker secretly intercepts communication between two parties without their knowledge.

The attacker positions themselves between the victim and the intended destination and can:

- Monitor communications
- Steal credentials
- Modify transmitted data
- Inject malicious content

Common MITM techniques include:

- ARP Spoofing
- Rogue Wi-Fi Access Points
- Session Hijacking
- SSL Stripping

## Real-World Example

Public Wi-Fi networks have frequently been used for MITM attacks. Attackers create fake wireless hotspots that appear legitimate. When users connect, attackers can capture login credentials, emails, and sensitive information transmitted through the network.

## Impact

- Credential theft
- Identity theft
- Financial fraud
- Data leakage
- Unauthorized account access

## Mitigation Strategies

### 1. Use HTTPS and TLS Encryption

Encrypt communications using HTTPS to prevent attackers from reading intercepted traffic.

### 2. Implement Multi-Factor Authentication (MFA)

Even if credentials are stolen, MFA provides an additional layer of protection.

### 3. Avoid Untrusted Public Wi-Fi

Users should avoid accessing sensitive services on unsecured networks or use a trusted VPN.

---

# 3. IP Spoofing

## How It Works

IP Spoofing occurs when an attacker falsifies the source IP address in network packets to impersonate another device.

Attackers use IP Spoofing to:

- Hide their identity
- Bypass access controls
- Launch DDoS attacks
- Conduct reconnaissance activities

Since the source address appears legitimate, it becomes difficult to identify the actual attacker.

## Real-World Example

IP Spoofing has been widely used in large-scale DDoS attacks. Attackers frequently spoof source addresses during reflection and amplification attacks to hide their locations and redirect traffic toward victims.

## Impact

- Unauthorized access
- Network trust exploitation
- Difficult incident investigation
- Service disruption
- Increased attack effectiveness

## Mitigation Strategies

### 1. Ingress and Egress Filtering

Internet Service Providers and organizations should filter packets with invalid source addresses.

### 2. Packet Authentication

Implement protocols that verify packet authenticity.

### 3. Network Monitoring

Monitor traffic for unusual patterns and suspicious packet behavior.

---

# 4. DNS Poisoning/Spoofing

## How It Works

DNS Poisoning, also known as DNS Spoofing, occurs when attackers manipulate DNS records to redirect users to malicious websites.

Instead of visiting the intended website, users unknowingly connect to attacker-controlled systems.

Attackers may:

- Modify DNS cache entries
- Exploit DNS server vulnerabilities
- Intercept DNS responses

## Real-World Example

The Kaminsky DNS Vulnerability discovered in 2008 demonstrated how attackers could poison DNS caches and redirect users to fraudulent websites. The vulnerability affected DNS infrastructure globally and led to emergency security updates.

## Impact

- Credential theft
- Malware distribution
- Website impersonation
- Data compromise
- Loss of user trust

## Mitigation Strategies

### 1. Implement DNSSEC

DNS Security Extensions (DNSSEC) provide cryptographic validation of DNS responses.

### 2. Secure DNS Servers

Regularly patch and update DNS infrastructure.

### 3. Use Trusted DNS Providers

Organizations should use reputable DNS providers with strong security controls.

---

# Comparison Table

| Threat | Attack Vector | Who Is At Risk | Difficulty to Execute | Ease of Mitigation |
|----------|----------|----------|----------|----------|
| DDoS | Massive traffic flooding | Websites, Servers, Organizations | Medium | Moderate |
| MITM | Intercepting communications | Users on insecure networks | Medium | Easy |
| IP Spoofing | Forged source IP addresses | Networks and Internet Services | Medium | Moderate |
| DNS Poisoning | Manipulated DNS responses | Internet users and organizations | High | Moderate |

---

# Conclusion

Network security threats continue to evolve and pose significant risks to organizations worldwide.

### Key Takeaway 1

Organizations should implement layered security controls rather than relying on a single defense mechanism.

### Key Takeaway 2

Continuous monitoring, regular patching, and employee awareness training are essential for reducing cyber risks.

### Key Takeaway 3

Strong encryption, secure network configurations, and proactive security practices significantly improve resilience against modern network attacks.

---

# References

1. National Institute of Standards and Technology (NIST) – https://www.nist.gov

2. Cybersecurity and Infrastructure Security Agency (CISA) – https://www.cisa.gov

3. MITRE ATT&CK Framework – https://attack.mitre.org

4. SANS Institute Reading Room – https://www.sans.org/reading-room

5. Krebs on Security – https://krebsonsecurity.com

6. Dyn DDoS Attack Analysis – https://www.cisa.gov

7. DNS Security Extensions (DNSSEC) Documentation – https://www.icann.org

8. OWASP Security Knowledge Base – https://owasp.org
