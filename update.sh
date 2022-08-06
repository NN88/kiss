#! /bin/sh

# Update Kali 
# Updated on 03/20/2021

# end execution if any command fails
set -e

echo ""
echo " Update Kali "
echo "______________________________________\n"
echo "set -e is active \n"
echo "===== apt-get TO STABLE ENVIRONMENT ===== \n"
echo "\n * apt-get update *"
echo "______________________________________"
apt-get update
echo "\n * apt-get upgrade -y *"
echo "______________________________________"
apt-get upgrade
echo "\n * apt-get dist-upgrade  *"
echo "______________________________________"
apt-get dist-upgrade
echo "\n * apt-get autoclean *"
echo "______________________________________"
apt-get autoclean
echo "\n * updatedb *"
updatedb
echo "_____________________________________"
echo "\n * ALWAYS LAST!!! searchsploit --update *"
echo "______________________________________"
searchsploit --update
echo "______________________________________"
echo "\n\n===== Happy Hacking! ===== \n\n"

