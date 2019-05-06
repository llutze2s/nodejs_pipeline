FROM node:8
MAINTAINER llutze2s

#User node setzen
USER node

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
CMD [ "npm", "i" , "--save-dev" , "supertest" , "should" , "mocha"]
CMD [ "npm", "i" , "-g" , "mocha"]

#index.js ausführen
CMD ["node","index.js"]
