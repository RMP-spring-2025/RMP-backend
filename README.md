# Инициализация
Инициализация submodule'ей. Нужна только при ```git clone``` настоящего репозитория.
```
    git submodule init
```

Обновить submodule'и. После ```git submodule init``` и когда хотите получить актуальные коммиты submodule'ей.
```
    git submodule update
```

# Сборка сервисов
Это временное решение. Заходит в каждый submodule и собирает проект.
```
    bash build.sh
```


# docker-compose
Запуск. 
```
    docker-compose up -d
```

Если пересобрали сервисы, то нужно пересобрать images.
```
    docker-compose up -d --build
```


Для очистки баз данных. Т.к. мы не пишем скрипты для миграции баз данных, то понадобится при каждом изменении структуры БД. 
```
    docker volume rm rmp-backend_postgresql_data
    docker volume rm rmp-backend_keydb_data
```

