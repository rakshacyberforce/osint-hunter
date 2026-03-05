ठीक है 👍 मैंने तुम्हारे README को **proper installation + dependency + environment steps + tool setup** के साथ **edit और complete** कर दिया है ताकि GitHub users को error न आए।

तुम इसे **सीधे GitHub README.md में paste कर सकते हो**।

---

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

* **Holehe** – Email OSINT account discovery
* **theHarvester** – Domain reconnaissance
* **Sherlock** – Username OSINT search
* **PhoneInfoga** – Phone number investigation
* **ExifTool** – Image metadata extraction
* **OpenCV** – AI image detection support

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

## 1️⃣ Clone Repository

```bash
git clone https://github.com/rakshacyberforce/osint-hunter.git
cd osint-hunter
```

---

# 2️⃣ Install Required System Tools

Install required tools:

```bash
sudo apt update

sudo apt install theharvester exiftool whois dnsutils python3-venv python3-pip -y
```

---

# 3️⃣ Create Virtual Environment (One-Time Setup)

```bash
python3 -m venv venv
```

Activate environment:

```bash
source venv/bin/activate
```

---

# 4️⃣ Install Python Dependencies

```bash
pip install opencv-python numpy holehe sherlock-project
```

---

# 5️⃣ Install PhoneInfoga

PhoneInfoga is required for phone number OSINT.

```bash
git clone https://github.com/sundowndev/phoneinfoga.git

cd phoneinfoga

sudo mv phoneinfoga /usr/local/bin/
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

### Email OSINT

```
Enter email: test@gmail.com
```

### Username OSINT

```
Enter username: hacker123
```

### Domain Scan

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
results/username_search.txt
results/phone_scan.txt
```

---

# ⚠ Disclaimer

This tool is created for **educational and research purposes only**.

The author is not responsible for misuse or illegal activities performed using this tool.

Always use OSINT tools responsibly and legally.

---

# 👨‍💻 Author

**Kunj Patel**

Cybersecurity Enthusiast
Bug Bounty Learner
OSINT Researcher

---

# ⭐ Support

If you find this project useful, consider giving it a **star on GitHub ⭐**

---

💡 **Pro Tip**

अगर चाहो तो मैं तुम्हारे repo के लिए ये भी बना सकता हूँ:

* 🔥 hacker style **GitHub banner**
* ⚡ **install.sh auto installer**
* 📊 **automatic report generator**
* 🧠 **OSINT HUNTER v2 upgrade**

जिससे repo **और professional दिखे और GitHub stars मिलने के chances बढ़ जाएँ**.
