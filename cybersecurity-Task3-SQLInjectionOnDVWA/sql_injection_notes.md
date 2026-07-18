# SQL Injection Notes and Analysis

## Environment

- Application: DVWA
- Security Level: Low
- Test Environment: Localhost
- Date: 18/07/2026

---

## Payload Log

### Payload 1

```sql
' OR '1'='1
```

### Purpose

Attempts to make the SQL condition always true.

### Result

- Authentication bypass successful.
- Multiple user records returned.

### Analysis

The application failed to validate user input and directly inserted it into the SQL query.

---

## Payload 2

```sql
1' OR '1'='1' #
```

### Purpose

Attempts to terminate the original query and comment out remaining SQL code.

### Result

- Multiple records displayed.
- Sensitive user information exposed.

### Analysis

The application accepted malicious input without sanitisation.

---

## Exposed Information

The following information was accessible:

- User ID
- First Name
- Last Name
- Username

---

## Security Impact

- Data confidentiality compromised
- User information disclosure
- Potential authentication bypass
- Increased risk of further attacks

---

## Recommended Fixes

1. Use Prepared Statements.
2. Validate User Input.
3. Apply Least Privilege Principle.
4. Implement Web Application Firewall.
5. Perform Secure Code Reviews.

---

## Final Observation

SQL Injection remains one of the most dangerous web application vulnerabilities. Even simple payloads can expose sensitive information when applications fail to properly handle user input.
