FROM bluenviron/mediamtx:latest as mediamtx

FROM alpine:3.20
RUN apk add --no-cache bash curl iputils
COPY --from=mediamtx /mediamtx /usr/local/bin/mediamtx
COPY --from=mediamtx /mediamtx.yml /etc/mediamtx.yml

ENTRYPOINT ["/usr/local/bin/mediamtx", "/etc/mediamtx.yml"]