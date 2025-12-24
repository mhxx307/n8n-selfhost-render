FROM n8nio/n8n:latest

USER root

# Force IPv4 DNS resolution
RUN echo "precedence ::ffff:0:0/96 100" >> /etc/gai.conf

USER node

ENV GENERIC_TIMEZONE="Asia/Ho_Chi_Minh"
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
