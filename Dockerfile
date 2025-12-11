FROM node:slim as base
WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 5000 5000

# Adding user
RUN adduser --disabled-password --home /app --gecos '' appuser && chown -R appuser:appuser /app

HEALTHCHECK --interval=30s timeouts=4s --start-periods=5s --retries=3s \
    CMD curl -f http://localhost:5000/health || exit 1

CMD ["npm", "start"]