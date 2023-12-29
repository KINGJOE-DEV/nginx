# Usa la imagen base de Alpine con Nginx
FROM nginx:alpine

# Copia el archivo de configuración personalizado al contenedor
COPY nginx.conf /etc/nginx/nginx.conf

# Expone el puerto 80 para que se pueda acceder al servidor web
EXPOSE 80

# Comando para iniciar Nginx cuando se ejecute el contenedor
CMD ["nginx", "-g", "daemon off;"]
