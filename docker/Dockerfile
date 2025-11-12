FROM nginx:alpine

COPY docker/nginx.conf /etc/nginx/nginx.conf

COPY ssl/cert.pem /etc/nginx/ssl/cert.pem
COPY ssl/key.pem /etc/nginx/ssl/key.pem
RUN chmod 644 /etc/nginx/ssl/cert.pem
RUN chmod 600 /etc/nginx/ssl/key.pem

COPY html/ /usr/share/nginx/html/

EXPOSE 443