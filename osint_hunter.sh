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

# -----------------------------
# EMAIL OSINT
# -----------------------------


if [ "$option" == "1" ]; then
read -p "Enter email: " email

echo -e "${GREEN}[+] Running Email OSINT${NC}"

holehe "$email" | tee results/email_accounts.txt

fi


# -----------------------------
# DOMAIN INTELLIGENCE
# -----------------------------
if [ "$option" == "2" ]; then
read -p "Enter domain: " domain

echo -e "${GREEN}[+] Whois Lookup${NC}"
whois "$domain" | tee results/domain_whois.txt

echo -e "${GREEN}[+] DNS Records${NC}"
dig "$domain" | tee results/domain_dns.txt

echo -e "${GREEN}[+] Running theHarvester${NC}"
theHarvester -d "$domain" -b all | tee results/domain_harvester.txt

fi


# -----------------------------
# USERNAME OSINT
# -----------------------------
if [ "$option" == "3" ]; then
read -p "Enter username: " username

echo -e "${GREEN}[+] Searching username${NC}"

sherlock "$username" --timeout 5 | tee results/username_search.txt

fi


# -----------------------------
# PHONE OSINT
# -----------------------------
if [ "$option" == "4" ]; then
read -p "Enter phone number: " phone

echo -e "${GREEN}[+] Running Phone OSINT${NC}"

phoneinfoga scan -n "$phone" | tee results/phone_scan.txt

fi


# -----------------------------
# IMAGE METADATA COMPARE
# -----------------------------
if [ "$option" == "5" ]; then
read -p "Image 1 path: " img1
read -p "Image 2 path: " img2

echo -e "${GREEN}[+] Extracting metadata${NC}"

exiftool "$img1" > results/img1_meta.txt
exiftool "$img2" > results/img2_meta.txt

echo -e "${GREEN}[+] Comparing metadata${NC}"

diff results/img1_meta.txt results/img2_meta.txt

fi


# -----------------------------
# AI IMAGE DETECTION
# -----------------------------
if [ "$option" == "6" ]; then
read -p "Enter image path: " image

echo -e "${GREEN}[+] Checking AI Generated Image${NC}"

python3 ai_image_check.py "$image"

fi


echo ""
echo -e "${CYAN}Scan Completed${NC}"
echo -e "${GREEN}Results saved in results folder${NC}"
