FROM debian:latest

# Cài đặt Shadowsocks-libev
RUN apt-get update && apt-get install -y shadowsocks-libev

# Copy file cấu hình
COPY shadowsocks.json /etc/shadowsocks-libev/config.json

# Chạy Shadowsocks
CMD shadowsocks-libev -c /etc/shadowsocks-libev/config.json