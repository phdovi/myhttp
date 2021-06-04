FROM ubuntu:18.04

RUN apt-get update && apt-get install -y -q nginx

COPY ./index.html /usr/share/nginx/html/
EXPOSE 80

CMD ["nginx", "-g", "damon off;"]
