#!/bin/bash

#npm starten auf der CLI
npm start
npm i --save-dev supertest should mocha
npm i -g mocha

#index.js ausführen
node index.js

#neues Terminal öffnen
term -e "mocha"
