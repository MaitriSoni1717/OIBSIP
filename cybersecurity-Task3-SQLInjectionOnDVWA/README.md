# Task 3 - SQL Injection on DVWA (Low Security)

## Objective

The objective of this task was to demonstrate a classic SQL Injection vulnerability using DVWA (Damn Vulnerable Web Application) running in a controlled local environment. The task involved exploiting insecure input handling, analysing exposed data, and understanding mitigation techniques.

---

## Tools Used

- DVWA (Damn Vulnerable Web Application)
- XAMPP
- Web Browser
- Kali Linux / Windows

---

## What is SQL Injection?

SQL Injection (SQLi) is a web security vulnerability that allows an attacker to interfere with database queries made by an application.

By inserting malicious SQL code into user input fields, an attacker may:

- Bypass authentication
- Read sensitive data
- Modify database records
- Delete information
- Gain administrative access

---

## DVWA Setup

### Environment

- Local Machine
- XAMPP Installed
- DVWA Installed
- Security Level: Low

### Steps Performed

1. Installed XAMPP.
2. Started Apache and MySQL.
3. Installed DVWA in the htdocs directory.
4. Configured the database connection.
5. Created and reset the DVWA database.
6. Logged in using:

```text
Username: admin
Password: password
```

7. Set DVWA Security Level to Low.

---

## SQL Injection Demonstration

### Payload 1

```sql
' OR '1'='1
```

### Purpose

This payload forces the SQL query condition to always evaluate as TRUE.

### Result

- Authentication bypass achieved.
- Multiple user records were returned.
- User information became visible.

---

### Payload 2

```sql
1' OR '1'='1' #
```

### Purpose

Uses a comment character to ignore the remaining SQL query.

### Result

- Database records were disclosed.
- Application returned multiple results.

---

## Data Exposed

The SQL Injection attack exposed:

- User IDs
- Usernames
- First Names
- Last Names

This demonstrates how insecure input validation can lead to unauthorized access to sensitive information.

---

## Why These Payloads Work

The application directly inserts user input into SQL queries without validation or parameterisation.

Example vulnerable query:

```sql
SELECT first_name, last_name
FROM users
WHERE user_id = '$id';
```

When the payload is inserted, the query logic changes and returns unintended results.

---

## Security Risks

- Unauthorized data disclosure
- Authentication bypass
- Data manipulation
- Database compromise
- Loss of confidentiality

---

## Prevention Techniques

### Parameterised Queries

Use prepared statements instead of concatenating user input.

### Input Validation

Validate and sanitize all user input.

### Least Privilege

Database accounts should only have required permissions.

### Web Application Firewall (WAF)

Deploy a WAF to detect malicious requests.

---

## Screenshots Included

- DVWA Setup
- Security Level Configuration
- Payload 1 Execution
- Payload 2 Execution
- SQL Injection Results

---

## Ethical Considerations

This demonstration was performed exclusively on DVWA running locally in a controlled environment.

No real websites, applications, or databases were targeted.

---

## Conclusion

This task demonstrated how SQL Injection vulnerabilities occur and how attackers can manipulate database queries to access sensitive information. Proper input validation, parameterised queries, and secure coding practices are essential to prevent SQL Injection attacks.
