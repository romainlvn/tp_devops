# 1. Image de base Node.js
FROM node:18-alpine

# 2. Répertoire de travail
WORKDIR /usr/src/app

# 3. Copie des fichiers de dépendances
COPY package*.json ./

# 4. Installation des dépendances
RUN npm install

# 5. Copie de l'intégralité du code source
COPY . .

# 6. Exposition du port de l'application (le port 3000 par défaut du projet)
EXPOSE 3000

# 7. Commande de démarrage
CMD ["npm", "run", "start"]