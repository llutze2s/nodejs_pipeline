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

#Port nach außen freigeben
EXPOSE 8080

CMD [ "bash", "start.sh"]
