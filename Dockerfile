FROM node:8

#App Verzeichniss erstellen
WORKDIR /usr/src/app

#package.json und package-lock.json kopieren
COPY package*.json ./

#nodejs installieren
RUN npm install

COPY . .

#Port nach außen freigeben
EXPOSE 8080

#npm starten auf der CLI
CMD [ "npm", "start" ]
