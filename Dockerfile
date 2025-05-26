FROM debian:latest

# Cài đặt các công cụ cần thiết và Shadowsocks-libev
RUN apt-get update && \
    apt-get install -y wget build-essential && \
    # Tải và cài đặt Shadowsocks-libev từ source
    wget https://github.com/shadowsocks/shadowsocks-libev/releases/download/v3.3.5/shadowsocks-libev-3.3.5.tar.gz && \
    tar -xzf shadowsocks-libev-3.3.5.tar.gz && \
    cd shadowsocks-libev-3.3.5 && \
    ./configure && make && make install && \
    cd .. && rm -rf shadowsocks-libev-3.3.5 shadowsocks-libev-3.3.5.tar.gz

# Copy file cấu hình
COPY shadowsocks.json /etc/shadowsocks-libev/config.json

# Chạy Shadowsocks với binary đúng (ss-server)
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json"]