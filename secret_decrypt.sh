#!/bin/sh

# https://docs.github.com/pt/actions/security-guides/encrypted-secrets
# Decrypt the file
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output ./features/support/config/secrets.json ./features/support/config/secrets.json.gpg
