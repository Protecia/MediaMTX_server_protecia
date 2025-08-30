# Étape 1 : Utiliser Alpine pour installer des outils ou des dépendances
FROM bluenviron/mediamtx:latest

# Entrypoint qui remplace le placeholder par la valeur d'env
COPY deploy/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
