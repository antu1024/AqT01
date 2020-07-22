#!/bin/bash
url=$1
Green="\u001b[32m"
Yellow="\u001b[33m"
Blue="\u001b[34m"
Magenta="\u001b[35m"
Cyan="\u001b[36m"
White="\u001b[37m"
printf "${Green}"
figlet -f Doom "                                AqT01"
echo ""
printf "${STOP}"
echo "                    @| Script Name : AqT01                          |@"
echo "                    @| All the commands of Aquatone together        |@"
echo "                    @| Coded by ArMan HoSSa!n || Version: One Pieces|@"
echo ""
echo ""
if [ ! -d "Report/$url" ];then
	mkdir Report/$url
fi
if [ ! -d "Report/$url/discover" ];then
	mkdir Report/$url/discover
fi
if [ ! -d "Report/$url/scan" ];then
	mkdir Report/$url/scan
fi
if [ ! -d "Report/$url/takeover" ];then
	mkdir Report/$url/takeover
fi
echo -e " ${Blue}             {+} Please make sure that your all Collector are running {+}"
echo ""
echo -e " ${Yellow}[+] Aquatone is discovering the domain of the site ..."
aquatone-discover -d $url #| tee Report/$url/discover.txt
cp /root/aquatone/$url/hosts.txt Report/$url/discover/
cp /root/aquatone/$url/hosts.json Report/$url/discover/
echo -e " ${Yellow}[+] Aquatone is scanning the domain of the site..."
aquatone-scan -d $url #| tee Report/$url/scan.txt
cp /root/aquatone/$url/open_ports.txt Report/$url/scan/
cp /root/aquatone/$url/urls.txt Report/$url/scan/
echo -e " ${Yellow}[+] Aquatone is trying to takeover the domain of the site..."
aquatone-takeover -d $url #| tee Report/$url/takeover.txt
cp /root/aquatone/$url/takeovers.json Report/$url/takeover/
echo ""
echo -e " ${White}./Done :-)"
echo -e " ${White}./peace :-)"
rm /root/aquatone/$url/hosts.txt
rm /root/aquatone/$url/hosts.json
rm /root/aquatone/$url/open_ports.txt
rm /root/aquatone/$url/urls.txt
rm /root/aquatone/$url/takeovers.json
echo ""
echo -e " ${Cyan}                     @| Thanks for Using M3                     |@"
echo -e " ${Magenta}                     @| Special Thanks [+] Aquatone Dev. Team   |@"
echo -e " ${Blue}                     @| CopyRight © antu1024                    |@"
