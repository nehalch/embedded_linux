#! /bin/bash

# qemu-img create -f qcow2 virtual_*.img 30G
# kvm -hda virtual_*.img -cdrom ./*.iso -m 2048 -net nic -net user -soundhw all

kvm \
	-hda $(ls ./virtual_*.img) \
	-m 2048 \
	-net nic \
	-net user \
	-soundhw all;
