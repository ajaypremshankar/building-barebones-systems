FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY content/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

RUN chown -R nginx:nginx /etc/nginx/nginx.conf
RUN chown -R nginx:nginx /usr/share/nginx/html

RUN  chmod -R 755 /etc/nginx/nginx.conf
RUN  chmod -R 755 usr/share/nginx/html

EXPOSE 5001
ENTRYPOINT ["nginx","-g","daemon off;"]