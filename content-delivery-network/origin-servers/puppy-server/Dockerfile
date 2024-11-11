FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY content/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]