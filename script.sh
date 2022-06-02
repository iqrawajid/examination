figlet "Iqra Wajid"
echo "Welcome to My Recon Project"
echo 
figlet "Mid Exam"
echo 
echo "Please Enter Your Domain name: "
read domain
#I am using Khaadi.com as my domain name.
echo 
#Here we use command for domain Ip Resolution
nslookup $domain >> domains.txt
cat domains.txt
echo 
echo "The results of Ns lookup."
echo
echo ==========================
#Here we are using dig and Whois for finding ips and domains
echo
dig $domain +noall +answer +authority
whois $domain
cat domains.txt
echo
echo "The results of Dig & Whois."
echo 
echo ==========================
echo
sublist3r -d $domain >> subdomains.txt
cat subdomains.txt
echo "The results of Sublist3r"
echo =========================
#here we are using harvester for emails/
echo
theHarvester -d $domain -l 200 -b all >> output.txt
cat output.txt
echo
#here we are using nmap to scan ports
echo 
nmap -p $domains >> output.txt
cat output.txt
echo
figlet "enjoy"

