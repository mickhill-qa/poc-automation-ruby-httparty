#!/bin/sh

# https://docs.github.com/pt/actions/security-guides/encrypted-secrets
# Encrypt the file
gpg --symmetric --cipher-algo AES256 ./features/support/config/secrets.json
