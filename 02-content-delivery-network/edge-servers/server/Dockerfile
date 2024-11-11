FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf

RUN chown -R nginx:nginx /etc/nginx/nginx.conf

RUN  chmod -R 755 /etc/nginx/nginx.conf

EXPOSE 6010
ENTRYPOINT ["nginx","-g","daemon off;"]