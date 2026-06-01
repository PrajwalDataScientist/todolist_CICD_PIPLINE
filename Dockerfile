FROM node:20

WORKDIR /app

ENV PUPPETEER_SKIP_DOWNLOAD=true

COPY package*.json ./

RUN npm install --legacy-peer-deps --no-audit

COPY . .

EXPOSE 3000

CMD ["npm","start"]
