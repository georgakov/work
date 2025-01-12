# Указываем базовый образ Node.js
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы приложения
COPY . .

# Открываем порт приложения
EXPOSE 3000

# Запускаем приложение
CMD ["node", "index.js"]

