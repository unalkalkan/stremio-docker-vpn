# stremio-docker-vpn

Stremio server in docker container that tunnels the traffic to a VPN container. This server also contains source code for stremio server `4.4.142`

### What is different from official stremio-server?
When you run official stremio-server in docker with a VPN container in network mode, you get SSDP discovery errors and the server doesnt start. 

Instead of trying to fix this error, I have decided to remove the SSDP discovery modules from stremio-server.

## How to use this image
### Configure VPN

Create a folder named `vpn`  and Place your openvpn configuration file inside it with the name `vpn.conf`

If you have credentials, you can create a second file `vpn.auth`, write your username in the first line and password in the second line and add the following line to `vpn.conf` 

    auth-user-pass /vpn/vpn.auth # to be reachable inside the container

For a much better and detailed explanation, you can check [openvpn-client](https://github.com/dperson/openvpn-client)

### Run Docker Compose
	docker-compose up -d

## Related projects:
- [stremio-streaming-server](https://github.com/sleeyax/stremio-streaming-server)
* [openvpn-client](https://github.com/dperson/openvpn-client)
