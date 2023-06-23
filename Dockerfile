FROM tailscale/tailscale:latest

# docker run -itd --name=tailvad --privileged --network host --restart always -v tailscale:/var/lib -v $(pwd)/wg0.conf:/etc/wireguard/wg0.conf tailvad:latest
RUN apk add -U curl wireguard-tools && \
    echo net.ipv4.ip_forward=1 >> /etc/sysctl.conf
COPY ./wg0.conf /etc/wireguard/wg0.conf
ENTRYPOINT ["tailscaled", "-tun", "userspace-networking"]
