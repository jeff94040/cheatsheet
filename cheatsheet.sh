----- VirtualBox -----

vboxmanage --version # Check VirtualBox version
vboxmanage showvminfo <vmname> # Show VM info
vboxmanage createvm --name=<vmname> --ostype=<enum> --register # Create new VM
vboxmanage modifyvm <vmname> --vrde on # Enable VRDE
vboxmanage modifyvm <vmname> --ioapic off # Turn off IOAPIC
vboxmanage list bridgedifs # List host network interfaces
vboxmanage modifyvm <vmname> --nic<N> bridged --bridgeadapter<N> <hostintname> # Add bridged network interface
vboxmanage modifyvm <vmname> --memory 2048 # Set VM's RAM in MB
vboxmanage createmedium --filename <path>/<vmname>/<vmname>.vdi --size 64000 # Create medium (size in MB)
vboxmanage storagectl <vmname> --name "SATA" --add sata # Control medium
vboxmanage storageattach <vmname> --storagectl SATA --port 0 --device 0 --type hdd --medium <path>/<vmname>/<vmname>.vdi # Attach medium

vboxmanage startvm <vmname> --type headless # Start headless VM
vboxmanage controlvm <vmname> poweroff # Shutdown VM
