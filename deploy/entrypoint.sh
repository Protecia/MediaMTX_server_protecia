#!/bin/sh
set -e

SRC="/mediamtx.yml"        # ton fichier monté (avec placeholder)
DST="/tmp/mediamtx.yml"        # fichier généré (pas monté)

# remplace le placeholder par la valeur de la variable d'env
# remplace le placeholder par la valeur de la variable d'env
sed "s|__API_PASS__|${MEDIA_MTX_API_PASS}|g" "$SRC" > "$DST"

exec /mediamtx "$DST"
