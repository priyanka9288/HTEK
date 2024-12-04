FROM ubuntu:latest

# Update package list and install nginx and other necessary tools
RUN apt-get update && \
    apt-get install -y nginx net-tools systemd && \
    apt-get clean
COPY index.html /usr/share/nginx/html/index.html

# Expose the port nginx will use
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

