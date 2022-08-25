from node:18-alpine

# ENV NODE_ENV=production

WORKDIR /app

COPY . .

EXPOSE 3000

RUN yarn install

RUN yarn build

CMD yarn start