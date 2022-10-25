#!/usr/bin/bash

sudo apt update
sudo apt install golang-go

#Subfinder | https://github.com/projectdiscovery/subfinder#installation
echo "Installing Subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo cp /home/$(whoami)/go/bin/subfinder /usr/local/bin
echo "Subfinder installed"

#Assetfinder | https://github.com/tomnomnom/assetfinder
echo "Installing Assetfinder"
go install -v github.com/tomnomnom/assetfinder@latest
sudo cp /home/$(whoami)/go/bin/assetfinder /usr/local/bin
echo "Assetfinder installed"

#Amass

#Findomain | https://github.com/Findomain/Findomain
echo "Installing Findomain"
git clone https://github.com/findomain/findomain.git
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/local/bin/
echo "Findomain installed"

#Gowitness | https://github.com/sensepost/gowitness
echo "Installing Gowitness"
go install github.com/sensepost/gowitness@latest
cp /home/$(whoami)/go/bin/gowitness /usr/local/bin
echo "Gowitness installed"

#HTTPX | https://github.com/projectdiscovery/httpx
echo "Installing HTTPX"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cp /home/$(whoami)/go/bin/httpx /usr/local/bin
echo "HTTPX installed"

Nuclei
echo "Installing Nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
cp /home/$(whoami)/go/bin/nuclei /usr/local/bin
echo "Nuclei installed"
