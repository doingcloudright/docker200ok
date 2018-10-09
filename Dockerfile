FROM nginx:latest
ENV PORT 80
ADD default.conf.template /etc/nginx/conf.d/default.conf
CMD sed -i "s/REPLACEPORT/$PORT/g" /etc/nginx/conf.d/default.conf && exec nginx -g "daemon off;"
