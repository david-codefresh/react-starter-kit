FROM node:6.9.2

RUN npm install --global yarn

COPY ./package.json /app/

RUN cd /app && yarn install

COPY . /app/

WORKDIR /app

CMD [ "npm", "start" ]

EXPOSE 3000:3000




FROM node:7.9.0

SHELL ["/bin/bash", "-c"]

COPY ./package.json /app2/

RUN cd /app2 && npm install

COPY . /app2/

WORKDIR /app2

CMD [ "npm", "start" ]

EXPOSE 4000:3000
