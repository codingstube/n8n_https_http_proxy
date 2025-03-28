FROM node:18-alpine

# Proxy settings for build time
ENV http_proxy="http://proxy:3128/"
ENV https_proxy="http://proxy:3128/"
ENV no_proxy="localhost,127.0.0.1"

WORKDIR /app

# Install required packages
RUN apk add --no-cache openssl

# Create self-signed certificate for development
RUN openssl req -x509 -newkey rsa:4096 -keyout private.key -out certificate.crt -days 365 -nodes -subj "/CN=localhost"

# Install dependencies
COPY package.json ./
RUN npm install --omit=dev

# Copy application code
COPY tunnel-proxy.js .

# Clear proxy settings for runtime
ENV http_proxy=""
ENV https_proxy=""
ENV no_proxy=""

# Expose HTTPS port
EXPOSE 8443

# Start proxy server
CMD ["node", "tunnel-proxy.js"]
