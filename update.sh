#! /bin/sh

# Update Kali 
# Updated on 06/2020/2020

# end execution if any command fails
set -e

echo ""
echo " Update Kali "
echo "______________________________________\n"
echo "set -e is active \n"
echo "===== apt-get TO STABLE ENVIRONMENT ===== \n"
echo "\n * apt-get update -y *"
echo "______________________________________"
apt-get update -y
echo "\n * apt-get upgrade -y *"
echo "______________________________________"
apt-get upgrade -y
echo "\n * apt-get dist-upgrade -y  *"
echo "______________________________________"
apt-get dist-upgrade -y
echo "\n * apt-get autoclean -y *"
echo "______________________________________"
apt-get autoclean -y
echo "\n\n===== Happy Hacking! ===== \n\n"
