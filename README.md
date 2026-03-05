

# OSINT HUNTER 🔎

**OSINT HUNTER** is a hacker-style Open Source Intelligence (OSINT) framework designed to collect intelligence from publicly available data sources.

This tool combines multiple OSINT techniques in a single interface to investigate **emails, domains, usernames, phone numbers, and images**.

The framework is designed for **cybersecurity researchers, bug bounty hunters, investigators, and OSINT analysts**.

---

# 🎯 Purpose

The goal of this project is to provide an **all-in-one OSINT investigation toolkit** that allows analysts to quickly gather intelligence from different sources.

The tool helps in:

* Cybersecurity investigations
* Digital footprint analysis
* Bug bounty reconnaissance
* Online identity investigation
* Image intelligence analysis

---

# ⚡ Features

OSINT HUNTER includes multiple modules:

### 1️⃣ Email OSINT

Checks where an email address is used across online services.

### 2️⃣ Domain Intelligence

Collects domain information including:

* WHOIS records
* DNS records

### 3️⃣ Username OSINT

Searches for a username across hundreds of websites.

### 4️⃣ Phone Number OSINT

Investigates phone numbers and retrieves information about them.

### 5️⃣ Image Metadata Comparison

Compares metadata of two images to detect changes.

### 6️⃣ AI Generated Image Detection

Attempts to detect whether an image might be AI generated.

---

# 🧠 Modules Overview

| Module                 | Description                            |
| ---------------------- | -------------------------------------- |
| Email OSINT            | Detect accounts linked with an email   |
| Domain Intelligence    | Gather domain WHOIS and DNS data       |
| Username OSINT         | Find usernames across social platforms |
| Phone OSINT            | Investigate phone number data          |
| Image Metadata Compare | Detect metadata differences            |
| AI Image Detection     | Identify possible AI-generated images  |

---

# 🛠 Tools Used

OSINT HUNTER integrates several well-known tools:

* Holehe
* theHarvester
* Sherlock
* PhoneInfoga
* ExifTool
* OpenCV

---

# 📂 Project Structure

```
osint-hunter
│
├── osint_hunter.sh
├── ai_image_check.py
├── README.md
└── results/
```

---

# ⚙ Installation

## Step 1 – Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/osint-hunter.git
cd osint-hunter
```

---

## Step 2 – Install Required Packages

Linux / Kali Linux:

```bash
sudo apt update

sudo apt install exiftool whois dnsutils python3-pip -y
```

---

## Step 3 – Install Python Dependencies

```bash
pip install opencv-python numpy holehe sherlock-project
```

---

# ▶ Usage

Make the script executable:

```bash
chmod +x osint_hunter.sh
```

Run the tool:

```bash
./osint_hunter.sh
```

---

# 📊 Tool Menu

When you run the tool you will see:

```
1. Email OSINT
2. Domain Intelligence
3. Username OSINT
4. Phone Number OSINT
5. Image Metadata Compare
6. AI Generated Image Detection
```

Select the module you want to run.

---

# 🔎 Example

Example email investigation:

```
Enter email: test@gmail.com
```

Example username search:

```
Enter username: hacker123
```

Example domain scan:

```
Enter domain: example.com
```

---

# 📁 Output

Results are stored inside the **results** directory.

Example:

```
results/email_accounts.txt
results/domain_whois.txt
results/domain_dns.txt
```

---

# ⚠ Disclaimer

This tool is created for **educational and research purposes only**.

The author is not responsible for misuse or illegal activities performed using this tool.

Always use OSINT tools responsibly and legally.

---

# 👨‍💻 Author

Kunj Patel

Cybersecurity Enthusiast
Bug Bounty Learner
OSINT Researcher

---

# ⭐ Support

If you find this project useful, consider giving it a **star** on GitHub.

---

