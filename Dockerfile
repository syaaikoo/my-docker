FROM alpine:latest

# install docker-cli agar bisa menjalankan compose di server tujuan
RUN apk add --no-cache docker-cli docker-cli-compose

# copy docker-compose.yml milikmu ke dalam image
WORKDIR /app
COPY docker-compose.yml /app/docker-compose.yml

CMD ["sh"]
