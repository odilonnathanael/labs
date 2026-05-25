#!/bin/bash
# Installation de pass et chezmoi sur Fedora
sudo dnf install -y pass pass-otp
# Vérifier les clés GPG
gpg --list-secret-keys
# Si aucune clé, générer une clé GPG (non interactif pour l'exemple, mais il faut le faire interactivement)
# Initialisation du dépôt pass
pass init "votre_email@example.com"
# Initialisation du dépôt git pour pass
pass git init
# Installation de chezmoi
sh -c "$(wget -qO- chezmoi.io/get)"
