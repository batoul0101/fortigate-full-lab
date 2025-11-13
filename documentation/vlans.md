# VLAN Configuration Details

## VLAN 10 - Users
- Purpose: Regular employee workstations
- Subnet: 192.168.10.0/24
- Gateway: 192.168.10.1
- DHCP Scope: 192.168.10.100-200
- Access: Full internet, internal resources

## VLAN 20 - Guest
- Purpose: Visitor and guest devices
- Subnet: 192.168.20.0/24
- Gateway: 192.168.20.1
- DHCP Scope: 192.168.20.100-200
- Access: Internet only, bandwidth limited

## VLAN 30 - Network Management
- Purpose: Network infrastructure management
- Subnet: 192.168.30.0/24
- Gateway: 192.168.30.1
- Static IPs only
- Access: Full management access

## VLAN 40 - Manager
- Purpose: Management workstations
- Subnet: 192.168.40.0/24
- Gateway: 192.168.40.1
- DHCP Scope: 192.168.40.100-150
- Access: Enhanced internal access
