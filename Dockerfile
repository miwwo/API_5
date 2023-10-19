# Используйте базовый образ Node.js
FROM node:12

# Установите JSON-сервер глобально
RUN npm install -g json-server

# Создайте директорию приложения в контейнере
WORKDIR /app

# Копируйте файлы вашего приложения, включая database.json, в контейнер
COPY . /app

# Запустите JSON-сервер при запуске контейнера
CMD ["json-server", "--host", "0.0.0.0", "--watch", "database.json", "--port", "3000"]
