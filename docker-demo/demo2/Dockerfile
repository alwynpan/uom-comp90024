FROM nginx:latest

ENV WELCOME_STRING="nginx in Docker"

WORKDIR /usr/share/nginx/html

COPY ["./entrypoint.sh", "/"]

RUN cp index.html index_backup.html; \
    chmod +x /entrypoint.sh; \
    apt-get update; \
    apt-get install -qy vim

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
