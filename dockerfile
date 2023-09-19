#Primera Etapa
FROM node:12.14-alpine AS build


### STAGE 2:RUN ###
### Actualización 2023-03-16

FROM nginx:latest AS ngi

COPY /dist/angular-starter /usr/share/nginx/html
COPY /nginx.conf  /etc/nginx/conf.d/default.conf
EXPOSE 80

