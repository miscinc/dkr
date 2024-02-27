# Use the official nginx image as the base
FROM nginx:alpine

# Remove the default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML files from the host machine to the container
COPY www /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
