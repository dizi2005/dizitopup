# Utiliser une image Nginx légère
FROM nginx:alpine

# Supprimer la configuration par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Créer une nouvelle configuration
RUN echo 'server { \
    listen ${PORT:-8080}; \
    server_name _; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Copier le build Flutter dans le dossier web
COPY build/web /usr/share/nginx/html

# Exposer le port Railway
EXPOSE 8080

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
