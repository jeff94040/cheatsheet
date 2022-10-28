----- GIT -----
git clone <https_url_to_repo> # Clone repo

----- NPM -----
npm list -g # List global packages
npm update -g # Update global packages
npm install -g <package_name> # Install global package

----- VirtualBox -----

vboxmanage --version # Check VirtualBox version
vboxmanage showvminfo <vmname> # Show VM info
vboxmanage createvm --name=<vmname> --ostype=<enum> --register # Create new VM
vboxmanage modifyvm <vmname> --vrde on --ioapic <on | off> # Enable VRDE. IOAPIC on for Win10
vboxmanage list bridgedifs # List host network interfaces
vboxmanage modifyvm <vmname> --nic1 bridged --bridgeadapter1 <hostintname> # Add bridged network interface
vboxmanage modifyvm <vmname> --memory 2048 # Set VM's RAM in MB

vboxmanage createmedium --filename <path>/<vmname>/<vmname>.vdi --size 64000 # Create medium (size in MB)
vboxmanage storagectl <vmname> --name "SATA" --add sata # Control medium
vboxmanage storageattach <vmname> --storagectl SATA --port 0 --device 0 --type hdd --medium <path>/<vmname>/<vmname>.vdi # Attach medium

vboxmanage storagectl <vmname> --name "IDE" --add ide --controller PIIX4 # IDE controller
vboxmanage storageattach <vmname> --storagectl IDE --port 1 --device 0 --type dvddrive --medium <pathtoiso>.iso

vboxmanage startvm <vmname> --type headless # Start headless VM
vboxmanage controlvm <vmname> poweroff # Shutdown VM
