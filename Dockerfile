# mengambil image node:14
FROM node:14-alpine

# membuat workdir app
WORKDIR /app

# copy semua file ke app
COPY . /app

# membuat node environtment
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies
RUN npm install --production --unsave-perm && npm run build

# publish port 8080
EXPOSE 8080

# jalankan perintah npm start
CMD ["npm",'start']