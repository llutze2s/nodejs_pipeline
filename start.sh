#!/bin/bash

#npm starten auf der CLI
npm start
npm i --save-dev supertest should mocha
npm i -g mocha

#index.js ausführen
xterm -e "node index.js"

#mocha test ausführen
term -e "mocha"
