FROM node:20.15.1-alpine
RUN npm install -g npm
WORKDIR /var/www/mailer
ADD . /var/www/mailer
RUN npm install
CMD npm run build && npm run start
