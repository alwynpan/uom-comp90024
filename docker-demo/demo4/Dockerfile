FROM nginx:latest

ENV WELCOME_STRING="nginx in Docker"

WORKDIR /usr/share/nginx/html

COPY ["default.conf", "/etc/nginx/conf.d/"]
COPY ["./entrypoint.sh", "/"]

RUN chmod +x /entrypoint.sh;

RUN touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chown -R nginx:nginx /var/log/nginx; \
    chown -R nginx:nginx /etc/nginx/conf.d; \
    chown -R nginx:nginx /docker-entrypoint.d; \
    chown -R nginx:nginx /entrypoint.sh; \
    sed -i 's/user  nginx;//g' /etc/nginx/nginx.conf; \
    mkdir -p /var/cache/nginx/client_temp; \
    mkdir -p /var/cache/nginx/proxy_temp; \
    mkdir -p /var/cache/nginx/fastcgi_temp; \
    mkdir -p /var/cache/nginx/uwsgi_temp; \
    mkdir -p /var/cache/nginx/scgi_temp; \
    chown -R nginx:nginx /var/cache/nginx/client_temp; \
    chown -R nginx:nginx /var/cache/nginx/proxy_temp; \
    chown -R nginx:nginx /var/cache/nginx/fastcgi_temp; \
    chown -R nginx:nginx /var/cache/nginx/uwsgi_temp; \
    chown -R nginx:nginx /var/cache/nginx/scgi_temp; \
    chown -R nginx:nginx /usr/share/nginx/html

USER nginx

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
