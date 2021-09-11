FROM nginx

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./etc/default.conf.template /etc/nginx/templates/

EXPOSE 80
EXPOSE 443
