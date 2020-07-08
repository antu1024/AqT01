#!/bin/bash
Red="\u001b[31m"
Green="\u001b[32m"
Yellow="\u001b[33m"
echo ""
echo -e "${Red}         #################         "
echo -e "${Yellow}         #${Green}AqT01 Installer${Yellow}#         "
echo -e "${Red}         #################          "
echo ""
if [ ! -d "Report" ];then
	mkdir Report
fi
echo -e "${Green} [+] apt updating..."
apt-get update >> update.txt
rm update.txt
echo -e "${Green} [#] Done."
echo -e "${Red} [+] Installing RUBY..."
apt-get install -y ruby-full >> ruby.txt
rm ruby.txt
apt-get install -y wpscan >> wp.txt
rm wp.txt
echo -e "${Red} [!] RUBY Installation DONE :-)"
echo -e "${Yellow} [+] Installing AQUATONE..."
gem install aquatone >> aquatone.txt
rm aquatone.txt
echo -e "${Yellow} [!] AQUATONE Installation DONE :-)"
echo ""
echo -e "${Green}            @# DONE @#          "
echo ""
#rm install.sh
