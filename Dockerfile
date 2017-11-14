FROM nginx:1.13.6-alpine
ENV TZ Asia/Shanghai

RUN mkdir -p /app
WORKDIR /app
COPY ./nginx.conf /etc/nginx/nginx.conf
