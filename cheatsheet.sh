----- BASH -----
ssh-keygen -t rsa # Generate public/private ssh key pair
scp <source> <destination> # Copy files via ssh, e.g. <user>@<ip>:<path>
ln -s <path_to_dest> <path_to_created_link> # Create soft link
ctrl-r # Recall command
sudo ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime # Change system time zone
cat ~/.ssh/id_rsa.pub | ssh <user>@<hostip> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys" # Copy public SSH key from client to server
sensors # check temps (mobo, cpu, pci)
lscpu # cpu details
htop # system utilization (memory, cpu)
df -h # disk usage
du -sh * # disk usage in current dir
lsb_release -a # distro information
shasum -a 256 <file> # check sha256 hash
md5sum <file> # md5 for MacOS. check md5 hash.

----- APT -----
sudo apt update # Update packages
apt list --upgradable # List upgradable packages
sudo apt upgrade # Update upgradable packages
sudo apt install <package> # Install package
sudo apt remove <package> # Remove package, not config files
sudo apt purge <package> # Purges package, including config files
sudo apt autoremove # Remove packages no longer needed

----- SYSTEMD -----
systemctl start <servicename> # Start service
systemctl stop <servicename> # Stop service
systemctl restart <servicename> # Restart service
systemctl enable <servicename> # Enable service to start automatically
systemctl disable <servicename> # Disable service from starting automatically
systemctl daemon-reload # Reload changes to unit .service files
systemctl list-units --type=service # List all services
journalctl -u <unitname>.service # View log for unit/service name

----- CRON -----
crontab -e # Edit crontab
service cron restart # Restart cron service

----- GIT -----
# start by creating a new repo on github.com, then clone it locally
git config --global user.email "<email>" # Once after client installation
git config --global user.name "<name>" # Once after client installation
git clone <https_url_to_repo> # Clone repo
git add * # stages all new mods, dels, & creations to the git
git commit -m "<msg>" # commits changes
git push <remote> <branch> # pushes remote commits to branch (does not push the tags)
# remove deleted files from remote
git commit -a -m "a file was deleted"
git push

----- NPM / Node -----
npm init # Creates new Node project
npm list -g # List global packages
npm update -g # Update global packages
npm install -g <package_name> # Install global package
npm install --save-dev <nodemon> # Install dev dependency

----- VirtualBox -----
vboxmanage --version # Check VirtualBox version
vboxmanage list vms # List all vms (running or not)
vboxmanage list runningvms # List running vms
vboxmanage list bridgedifs # List host network interfaces

vboxmanage showvminfo <vmname> # Show VM info

vboxmanage createvm --name=<vmname> --ostype=<enum> --register # Create new VM

vboxmanage modifyvm <vmname> --vrde on --ioapic <on | off> # Enable VRDE. IOAPIC on for Win10
vboxmanage modifyvm <vmname> --nic1 bridged --bridgeadapter1 <hostintname> # Add bridged network interface
vboxmanage modifyvm <vmname> --memory 2048 # Set VM's RAM in MB

vboxmanage createmedium --filename <path>/<vmname>/<vmname>.vdi --size 64000 # Create medium (size in MB)
vboxmanage storagectl <vmname> --name "SATA" --add sata # Control medium
vboxmanage storageattach <vmname> --storagectl SATA --port 0 --device 0 --type hdd --medium <path>/<vmname>/<vmname>.vdi # Attach medium

vboxmanage storagectl <vmname> --name "IDE" --add ide --controller PIIX4 # IDE controller
vboxmanage storageattach <vmname> --storagectl IDE --port 1 --device 0 --type dvddrive --medium <pathtoiso>.iso

vboxmanage startvm <vmname> --type headless # Start headless VM
vboxmanage controlvm <vmname> acpipowerbutton # Gracefully shutdown VM

vboxmanage unregistervm --delete <vmname> # Unregister and delete VM

----- CERTBOT -----
sudo certbot renew --dry-run # Test cert refresh, requires port 80
sudo certbot renew # Cert refresh, requires port 80
