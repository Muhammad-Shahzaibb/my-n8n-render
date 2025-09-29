FROM n8nio/n8n:latest

# Ensure n8n runs on the correct port
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

WORKDIR /home/node

# Mount persistent storage
VOLUME ["/home/render/data"]

EXPOSE 5678

# Start n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
