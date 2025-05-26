FROM shadowsocks/shadowsocks-libev:latest

# Cài đặt thêm công cụ nếu cần (ví dụ: vim để debug)
RUN apk add --no-cache bash

# Copy file cấu hình (tùy chọn)
COPY shadowsocks.json /etc/shadowsocks-libev/config.json