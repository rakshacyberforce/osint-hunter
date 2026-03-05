#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

clear

echo -e "${RED}"
echo " ██████╗ ███████╗██╗███╗   ██╗████████╗"
echo "██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝"
echo "██║   ██║███████╗██║██╔██╗ ██║   ██║"
echo "██║   ██║╚════██║██║██║╚██╗██║   ██║"
echo "╚██████╔╝███████║██║██║ ╚████║   ██║"
echo " ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝"
echo ""

echo -e "${CYAN}OSINT HUNTER FRAMEWORK${NC}"
echo -e "${YELLOW}Author: Kunj Patel${NC}"
echo ""

echo "1. Email OSINT"
echo "2. Domain Intelligence"
echo "3. Username OSINT"
echo "4. Phone Number OSINT"
echo "5. Image Metadata Compare"
echo "6. AI Generated Image Detection"
echo ""

read -p "Select option: " option

mkdir -p results

# EMAIL OSINT

if [ "$option" == "1" ]; then
read -p "Enter email: " email

echo -e "${GREEN}[+] Checking accounts${NC}"
holehe $email > results/email_accounts.txt

echo -e "${GREEN}[+] Running theHarvester${NC}"
theHarvester -d $email -b all > results/email_harvest.txt
fi

# DOMAIN INTEL

if [ "$option" == "2" ]; then
read -p "Enter domain: " domain

echo -e "${GREEN}[+] Whois Lookup${NC}"
whois $domain > results/domain_whois.txt

echo -e "${GREEN}[+] DNS Records${NC}"
dig $domain > results/domain_dns.txt
fi

# USERNAME OSINT

if [ "$option" == "3" ]; then
read -p "Enter username: " username

echo -e "${GREEN}[+] Searching username${NC}"
sherlock $username --timeout 5
fi

# PHONE OSINT

if [ "$option" == "4" ]; then
read -p "Enter phone number: " phone

phoneinfoga scan -n $phone
fi

# IMAGE METADATA COMPARE

if [ "$option" == "5" ]; then
read -p "Image 1 path: " img1
read -p "Image 2 path: " img2

exiftool $img1 > results/img1_meta.txt
exiftool $img2 > results/img2_meta.txt

diff results/img1_meta.txt results/img2_meta.txt
fi

# AI IMAGE DETECTION

if [ "$option" == "6" ]; then
read -p "Enter image path: " image

python3 ai_image_check.py $image
fi

echo ""
echo -e "${CYAN}Scan Completed${NC}"
echo -e "${GREEN}Results saved in results folder${NC}"
