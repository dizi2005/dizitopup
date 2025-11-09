# Étape 1 : utiliser une image légère de serveur web
FROM nginx:alpine

# Étape 2 : copier le build Flutter Web dans le répertoire du serveur
COPY build/web /usr/share/nginx/html

# Étape 3 : exposer le port utilisé par Railway
EXPOSE 8080

# Étape 4 : lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
