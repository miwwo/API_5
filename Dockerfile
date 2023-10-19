# Используем официальный образ Node.js
FROM node:10

# Устанавливаем json-server глобально
RUN npm install -g json-server

# Устанавливаем необходимую версию npm
RUN npm install -g npm@10.2.0

# Создаем директорию приложения в контейнере
WORKDIR /app

# Копируем файлы вашего приложения, включая database.json, в контейнер
COPY . /app

# Запускаем json-server при запуске контейнера
CMD ["json-server", "--watch", "database.json"]

# Открываем порт, который использует json-server
EXPOSE 3000
