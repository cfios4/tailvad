# tailvad
PiHole with Tailscale and Wireguard installed connecting to Mullvad


## Instructions
1. Clone repo ```git clone https://github.com/cfios4/tailvad.git```
2. Edit ```wg0.conf``` with your ```.conf``` for external peer
3. Build ```Dockerfile``` ```docker build -t tailvad .```
4. Run Docker image ```docker run -itd --name=tailvad --privileged --network host --restart always -v tailscale:/var/lib -v $(pwd)/wg0.conf:/etc/wireguard/wg0.conf tailvad:latest``` place new or updated ```wg0.conf``` in present working directory to change from the one that was built in
5. Add aliases for easier management / interaction with container ```bash set_alias.sh```
6. Test Wireguard connectivity with ```wg``` and see if alias is working properly
7. Connect to Tailscale account using alias ```tailscale``` this alias behaves as if Tailscale is installed on your local system so place your arguments here also (tailscale up --ssh --auth-key ... --advertise-routes ...)
8. Confirm Tailscale is connected with ```tailscale status``` and view tailnet peers or ```tailscale ip``` to view node's IP
9. Set DNS global nameserver on Tailscale Admin page ```https://tailscale.com/admin/dns``` with node's IP and override local DNS
10. Devices connected to Tailnet should now be using PiHole
