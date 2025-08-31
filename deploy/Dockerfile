# Étape 1 : Utiliser Alpine pour rendre le script exécutable
FROM alpine:latest AS builder
WORKDIR /app
COPY deploy/entrypoint.sh .
RUN chmod +x entrypoint.sh

# Étape 2 : Utiliser l'image finale (minimaliste)
FROM bluenviron/mediamtx:latest
COPY --from=builder /app/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
