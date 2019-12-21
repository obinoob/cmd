# list running services
net start

# list FDQN
netstat -f

# list active connections listening on a specific port
netstat -aon | find /i "listening" | find "port"

# find a specific service by name
sc query | find /n "Service Name"

# list all services 
sc queryex type= service state= all

# find running service
netstat -ano | find /i "listening"

# DNS lookup
nslookup google.com google.pt

# lookup query to specific DNS server
nslookup google.com 1.1.1.1

# lookup MX server
nslookup
set type=mx
google.com

# lookup NS server
nslookup
set type=ns
google.com

# reverse lookup
nslookup
set type=ptr
8.8.8.8

# Get public IP address
nslookup myip.opendns.com resolver1.opendns.com

# PING number of packets & size
ping -n 5 -l 1500 www.google.com

# ping | find the hostname assigned ip address, otherwise ping it as normal
ping -a 8.8.8.8

# ping force IPV6 to hostname indefenetly 
ping -t -6 google.com

# adding vpn powershell
Add-VpnConnection -Name "VPN Name" -ServerAddress "domain.com" -TunnelType L2TP -L2tpPsk "SharedSecretKey" -Force -AuthenticationMethod Pap -SplitTunneling $True -EncryptionLevel "Optional"
