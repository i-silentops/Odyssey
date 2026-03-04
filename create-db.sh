#!/bin/bash

# 1. Vérification des droits root (nécessaire pour apt et mariadb)
if [ "$EUID" -ne 0 ]; then
  echo "Erreur : Ce script doit être exécuté en tant que root (utilise sudo)."
  exit 1
fi

# 2. Gestion du nom du projet (paramètre ou saisie)
if [ -z "$1" ]; then
    read -p "Entrez le nom du projet : " PROJECT_NAME
else
    PROJECT_NAME="$1"
fi

# Vérification que le nom n'est pas vide
if [ -z "$PROJECT_NAME" ]; then
    echo "Erreur : Le nom du projet ne peut pas être vide."
    exit 1
fi

# 3. Installation de MariaDB si non présent
# On vérifie si la commande mariadb ou mysql existe
if ! command -v mariadb &> /dev/null && ! command -v mysql &> /dev/null; then
    echo "MariaDB n'est pas installé. Installation en cours..."
    apt-get update
    apt-get install -y mariadb-server
else
    echo "MariaDB est déjà installé."
fi

# S'assurer que le service est démarré
systemctl start mariadb 2>/dev/null || systemctl start mysql 2>/dev/null

# 4. Génération d'un mot de passe aléatoire de 16 caractères (lettres et chiffres)
DB_PASSWORD=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 16)

# 5. Création de la base, de l'utilisateur et attribution des droits
echo "Configuration de la base de données..."

# Utilisation d'un heredoc pour passer les commandes SQL
mariadb <<EOF
CREATE DATABASE IF NOT EXISTS \`${PROJECT_NAME}\`;
CREATE USER IF NOT EXISTS '${PROJECT_NAME}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';
ALTER USER '${PROJECT_NAME}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}'; -- Au cas où l'utilisateur existe déjà
GRANT ALL PRIVILEGES ON \`${PROJECT_NAME}\`.* TO '${PROJECT_NAME}'@'localhost';
FLUSH PRIVILEGES;
EOF

# 6. Affichage du récapitulatif
echo ""
echo "=========================================="
echo "    Configuration terminée avec succès    "
echo "=========================================="
echo "Base de données : ${PROJECT_NAME}"
echo "Utilisateur     : ${PROJECT_NAME}"
echo "Mot de passe    : ${DB_PASSWORD}"
echo "Pour s'y connecter : mysql -u ${PROJECT_NAME} -p'${DB_PASSWORD}' ${PROJECT_NAME}"
