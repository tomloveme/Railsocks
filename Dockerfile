FROM shadowsocks/shadowsocks-libev:latest

# Copy file cấu hình
COPY shadowsocks.json /etc/shadowsocks-libev/config.json

# Chạy Shadowsocks
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json"]