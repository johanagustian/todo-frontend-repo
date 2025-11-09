# Tahap build
FROM node:18 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Variabel environment untuk API base URL
ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL

RUN npm run build

# Tahap serve pakai nginx
FROM nginx:alpine
# TAMBAHKAN BARIS INI UNTUK MENGGANTI KONFIGURASI NGINX DEFAULT
COPY nginx.conf /etc/nginx/conf.d/default.conf 

COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]