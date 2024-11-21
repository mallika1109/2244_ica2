FROM ubuntu:latest

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy website files into Nginx's default directory
COPY . /var/www/html/

# Expose port 80 to make the website accessible
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

