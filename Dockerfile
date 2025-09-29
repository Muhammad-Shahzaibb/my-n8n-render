FROM n8nio/n8n:latest

# Render sets the port via $PORT, so we tell n8n to use it
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

WORKDIR /home/node

VOLUME ["/home/render/data"]

EXPOSE 5678

CMD ["n8n"]
