FROM node:18.6-slim AS base
RUN apt-get update
RUN corepack enable && corepack prepare pnpm@latest --activate
ENV PNPM_HOME=/root/.local/share/pnpm
ENV PATH=$PATH:$PNPM_HOME

FROM base as installer
WORKDIR /app
COPY package.json .
COPY pnpm-lock.yaml .
COPY app.js .
RUN pnpm install

CMD node app.js
