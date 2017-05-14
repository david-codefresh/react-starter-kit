FROM node:6.9.2

RUN npm install --global yarn

COPY ./package.json /app/

RUN cd /app && yarn install

COPY . /app/

WORKDIR /app

CMD [ "yarn", "start" ]

EXPOSE 3000:3000




FROM node:7.9.0

SHELL ["/bin/bash", "-c"]

RUN npm install --global yarn

COPY ./package.json /app2/

RUN cd /app2 && yarn install

COPY . /app2/

WORKDIR /app2

CMD [ "yarn", "start" ]

EXPOSE 4000:3000
