FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /Users/divyangbagla/Downloads/techworld-js-docker-demo-app-master/app

COPY . /Users/divyangbagla/Downloads/techworld-js-docker-demo-app-master/app

# set default dir so that next commands executes in /home/app dir
#WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "/Users/divyangbagla/Downloads/techworld-js-docker-demo-app-master/app/server.js"]
