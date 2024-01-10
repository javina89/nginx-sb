#!/bin/sh
# Substitute environment variables in the Nginx template file
envsubst '$USERNAME,$SITE1' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx in the foreground
nginx -g 'daemon off;'