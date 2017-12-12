FROM node:8-alpine

ENV NODE_ENV=production

RUN mkdir -p /code

WORKDIR /code

COPY ./package.json ./

RUN yarn --frozen-lockfile

COPY ./ ./

EXPOSE 8080

CMD [ "yarn", "start" ]
