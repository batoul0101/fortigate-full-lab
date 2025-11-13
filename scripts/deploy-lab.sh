#!/bin/bash

echo "Starting FortiGate Lab Deployment..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

echo "1. Creating network bridges..."
# Create bridges for different network segments
brctl addbr isp-bridge
brctl addbr internal-bridge
brctl addbr dmz-bridge

echo "2. Starting virtual machines..."
# Start FortiGate VM
virsh start fortigate-vm

# Start other VMs
virsh start core-switch-vm
virsh start ad-server-vm

echo "3. Waiting for VMs to boot..."
sleep 60

echo "4. Lab deployment completed!"
echo "Access FortiGate at: https://192.168.1.1"
echo "Access AD Server at: 192.168.30.10"
