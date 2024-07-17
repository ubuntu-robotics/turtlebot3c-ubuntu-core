#!/bin/bash

tar -czvf metadata.tar.gz metadata.yaml

qemu-img convert -f raw pc.img -O qcow2 turtlebot3c.qcow2

lxc image import metadata.tar.gz turtlebot3c.qcow2 --alias turtlebot3c-core-20 

echo "You can now launch a VM with:"
echo "  lxc launch turtlebot3c-core-20 tb3c-vm --vm"

