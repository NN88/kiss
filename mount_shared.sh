#! /bin/sh

set -e

! /bin/sh

# Setup Kali Environment
# Updated on 06/08/2018

# end execution if any command fails
# set -e


echo ""
echo " Mount Up!!!!!!! "
echo " mount 'shared' folder which is hosted on master OS to VMWare Kali Linux Guest OS"
echo " Make sure you are fully updated, and upgraded. Run the update.sh script if not "
echo "________________________________________________ \n"
echo "\n===== Make ~/mnt/hgfs mount point on Guest OS  ====="
mkdir -p  ~/mnt/hgfs

echo "\n===== Mount Shared Folder from Master OS to Guest OS  ====="
vmware-hgfsclient | while read folder; do
  vmwpath="/mnt/hgfs/\${folder}"
  echo "[i] Mounting \${folder}   (\${vmwpath})"
  sudo mkdir -p "\${vmwpath}"
  sudo umount -f "\${vmwpath}" 2>/dev/null
  sudo vmhgfs-fuse -o allow_other -o auto_unmount ".host:/\${folder}" "\${vmwpath}"
done
sleep 2s

echo "\n\n ======== Happy Hacking ========== \n\n"
