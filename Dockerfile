FROM node:20
ENV NODE_ENV=production

WORKDIR /src/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

CMD [ "node", "app.js" ]
