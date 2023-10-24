FROM node:18
#Create a app directory
WORKDIR /app
#Install app dependencies
COPY pack*.json ./

#Run pm install
RUN npm install
#Bundle app souce
COPY . .
EXPOSE 3000

CMD [ "node", "app.js" ]
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
