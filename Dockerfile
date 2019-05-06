FROM node:8
MAINTAINER llutze2s

#User node setzen
USER node

#App Verzeichniss erstellen
WORKDIR /usr/src/app

RUN echo "Ordner mounten"

#package.json und package-lock.json kopieren
COPY package*.json ./

#nodejs installieren
RUN npm install

COPY . .

#Port nach außen freigeben
EXPOSE 8080

#npm starten auf der CLI
CMD [ "npm", "start" ]

#index.js ausführen
CMD ["node","index.js"]
