FROM node:lts-buster

RUN git clone https://github.com/lyfe00011/whatsapp-bot-md /root/LyFE

RUN npm cache clean --force
RUN rm -rf /root/lyfe00011/node_modules

WORKDIR /root/lyfe00011

RUN npm install


RUN npm update

EXPOSE 9000

CMD ["npm", "start"]

# Let's use Node.js LTS (Long Term Support) version based on Buster
