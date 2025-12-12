FROM node:slim AS base
WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 5000 5000

# Adding user
RUN adduser --disabled-password --home /app --gecos '' appuser && chown -R appuser:appuser /app


CMD ["npm", "start"]