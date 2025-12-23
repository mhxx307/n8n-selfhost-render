# base off the official n8n image
FROM n8nio/n8n:latest

# set working directory
WORKDIR /home/node

# user node để chạy n8n
USER node

# expose n8n default port
EXPOSE 5678

# launch n8n
ENTRYPOINT ["n8n"]
