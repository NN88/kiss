#! /bin/sh

# Setup Kali Environment
# Updated on 06/08/2018

# end execution if any command fails
# set -e


echo ""
echo " New Kali Environment Setup"
echo "________________________________________________ \n"
# echo "set -e is active \n"

echo "===== CHECK FOR GIT ====="
if test ! $(which git); then
	echo " x Git not found, so installing Git!"
	echo $(apt-get install git)
	echo ""
	exit
else
	echo " @ Git found"
        echo $(git --version)
	echo "\n"
fi

echo "===== CHECK FOR discover (https://github.com/leebaird/discover) ====="
if [ ! -d /opt/discover/ ]; then
	echo " x Discover not found, so installing Discover!"
	echo $(git clone https://github.com/leebaird/discover /opt/discover/)
	echo " RUN /opt/discover/update.sh on your own"
	exit
else
	echo " @ Discover found"
	echo " running 'git -C /opt/discover/ pull' "
	echo $(git -C /opt/discover/ pull)
	echo " RUN /opt/discover/update.sh on your own"
	echo "\n"
fi

echo "===== CHECK FOR SecLists (https://github.com/danielmiessler/SecLists) ====="
if [ ! -d /usr/share/seclists/ ]; then
	echo " x SecLists not found, so installing SecLists!"
	echo $(git clone https://github.com/danielmiessler/SecLists.git /usr/share/seclists/)
        exit
else
	echo " @ SecLists found"
	echo " running 'git -C /usr/share/seclists/ pull' "
	echo $(git -C /usr/share/seclists/ pull)
	echo "\n"
fi

echo "===== CHECK FOR gobuster ====="
if test ! $(which gobuster); then
	echo " x gobuster not found, so installing gobuster!"
	echo $(apt-get install gobuster)
	echo "\n"
	exit
else
	echo " @ gobuster found"
	echo "\n"
fi

echo "\n"
echo "Happy Hacking!"
