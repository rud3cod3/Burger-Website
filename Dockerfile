FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

# Copy eatBurger folder contents to nginx html folder
COPY ./eatBurger/ /usr/share/nginx/html/

RUN chmod -R 755 /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

