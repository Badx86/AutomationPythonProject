# Используйте официальный образ Python
FROM python:3.11

# Установите рабочий каталог в /app
WORKDIR /app

# Скопируйте текущий каталог в рабочий каталог /app внутри Docker образа
COPY . /app

# Установите все необходимые зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Запустите команду, когда контейнер Docker будет запущен
CMD ["pytest", "-s", "-v", "--alluredir=allure-results"]
