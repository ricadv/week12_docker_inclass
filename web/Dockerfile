FROM nginx

WORKDIR /frontend

COPY html .

RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates

EXPOSE 5000
