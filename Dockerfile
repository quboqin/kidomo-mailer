FROM node:20.15.0-alpine
RUN npm install -g npm@10.7.0
RUN mkdir -p /var/www/mailer
WORKDIR /var/www/mailer
ADD . /var/www/mailer
RUN npm install
CMD npm run build && npm run start:prod
