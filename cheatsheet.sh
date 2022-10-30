----- BASH -----
ln -s <path_to_dest> <path_to_created_link> # Create soft link

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

----- GIT -----
git config --global user.email "<email>" # Once after client installation
git config --global user.name "<name>" # Once after client installation
git clone <https_url_to_repo> # Clone repo
git add * # stages all new mods, dels, & creations to the git
git commit -m "<msg>" # commits changes
git push <remote> <branch> # pushes remote commits to branch (does not push the tags)

----- NPM -----
npm list -g # List global packages
npm update -g # Update global packages
npm install -g <package_name> # Install global package

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
