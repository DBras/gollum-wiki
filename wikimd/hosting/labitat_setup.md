---
title: Labitat Setup
---

# IP and Configuration

Public IP address: `185.38.175.82`. Configuration:

```bash
auto eth0
# IPv4
iface eth0 inet static
    address 185.38.175.82/26 10.42.1.82/24
        gateway 185.38.175.65
            dns-nameservers 1.1.1.1 8.8.8.8

# IPv6
iface eth0 inet6 static
    address 2a01:4262:1ab:20::82/64
        gateway 2a01:4262:1ab:20::1
```
