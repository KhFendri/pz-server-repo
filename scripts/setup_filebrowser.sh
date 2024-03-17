echo "setting up filebrowser"
curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
cd /etc/filebrowser
filebrowser config import /etc/filebrowser/filebrowser_export.json
filebrowser users add admin admin --perm.admin

