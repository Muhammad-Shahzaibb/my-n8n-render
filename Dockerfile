# Dockerfile
FROM n8nio/n8n:latest

WORKDIR /home/node

# expose default port n8n listens on
EXPOSE 5678

CMD ["n8n"]
