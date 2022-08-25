from node:18-alpine

# ENV NODE_ENV=production

WORKDIR /app

COPY . .

EXPOSE 3000
HEALTHCHECK CMD curl http://localhost:3000/ || exit 1

RUN yarn install

RUN yarn build

CMD yarn start