FROM bluenviron/mediamtx:latest as mediamtx

FROM alpine:3.20
RUN apk add --no-cache bash curl iputils
COPY --from=mediamtx /mediamtx /usr/local/bin/mediamtx
COPY --from=mediamtx /mediamtx.yml /etc/mediamtx.yml

# Entrypoint qui remplace le placeholder par la valeur d'env
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]