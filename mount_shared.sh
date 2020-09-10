#! /bin/sh

# Setup Kali Environment
# Updated on 06/08/2018

# end execution if any command fails
# set -e


echo ""
echo " Mount Up!!!!!!! "
echo " mount 'shared' folder which is hosted on master OS to VMWare Kali Linux Guest OS. Make sure you are fully updated, and upgraded. Run the update.sh script if not "
echo "________________________________________________ \n"

echo "\n===== Create mount point ====="
sudo mkdir -p /mnt/hgfs

echo "\n===== Mount Shared Folder from Master OS to Guest OS  ====="
sudo mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other

echo "\n===== Symlink Shared Folder to Desktop  ====="
ln -s /mnt/hgfs/shared ~/Desktop/shared

echo "\n\n ======== Happy Hacking ========== \n\n"
