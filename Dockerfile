FROM nginx:latest

# Disable default entrypoint behavior
ENV NGINX_ENTRYPOINT_QUIET_LOGS=1

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the Nginx template file and the script to the container
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh

# Make sure the script is executable
RUN chmod +x /entrypoint.sh

# Use the script as the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Expose ports
EXPOSE 80
EXPOSE 443