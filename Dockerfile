FROM nginx:alpine

# Supprimer la config par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Créer une nouvelle config compatible Railway
RUN printf 'server {\n\
    listen 8080;\n\
    server_name _;\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
    location / {\n\
        try_files $uri /index.html;\n\
    }\n\
}\n' > /etc/nginx/conf.d/default.conf

# Copier ton build Flutter web
COPY build/web /usr/share/nginx/html

EXPOSE 8080

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
