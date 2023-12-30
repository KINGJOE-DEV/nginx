# Usa a imagem base oficial do Nginx
FROM nginx:alpine

# Expõe a porta 80 para permitir acesso ao servidor web
EXPOSE 80

# Comando para iniciar o Nginx quando o contêiner for executado
CMD ["nginx", "-g", "daemon off;"]
