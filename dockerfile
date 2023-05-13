# Set base image
FROM node:latest

# Set working directory
WORKDIR /home/bots/Skyblock-Calculator

# Kopieren Sie das Anforderungsfile in den Arbeitsbereich
COPY package*.json ./

# Abhängigkeiten installieren
RUN npm install

# Kopieren Sie den gesamten Code in den Arbeitsbereich
COPY ./src/ .

# Expose the port your bot will listen on
EXPOSE 3000

# Start the bot
CMD ["npm", "start"]