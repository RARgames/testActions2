FROM node:20-alpine as server-dependencies

WORKDIR /app

COPY server/package.json server/package-lock.json ./

FROM node:20-alpine AS client

WORKDIR /app

COPY client/package.json client/package-lock.json ./

FROM node:20-alpine

VOLUME /app/public/user-avatars
VOLUME /app/public/project-background-images
VOLUME /app/private/attachments

EXPOSE 1337

CMD ["./start.sh"]
