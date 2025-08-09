FROM n8nio/n8n:latest

# Set environment variables with defaults
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=${N8N_BASIC_AUTH_ACTIVE:-true}
ENV N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER:-admin}
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD:-yourpassword}
ENV WEBHOOK_URL=${WEBHOOK_URL}

# Expose port
EXPOSE 5678

# Create volume for n8n data
VOLUME ["/home/node/.n8n"]

# Start n8n
CMD ["n8n", "start"]