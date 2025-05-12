FROM nginx:alpine

# Copy your HTML file(s) into the default nginx web directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx (default CMD already handles this)
