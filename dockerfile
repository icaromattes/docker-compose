# Usar a imagem oficial do Apache
FROM httpd:latest

# Copiar arquivos de configuração personalizados
COPY ./apache/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./apache/default-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./app /usr/local/apache2/htdocs

# Copiar certificados SSL (se for usar HTTPS)
COPY ./apache/ssl/server.crt /usr/local/apache2/conf/ssl/server.crt
COPY ./apache/ssl/server.key /usr/local/apache2/conf/ssl/server.key

# Expor as portas
EXPOSE 80
EXPOSE 443
