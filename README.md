Инициализация submodule'ей. Нужна только при ```git clone``` настоящего репозитория.
```
    git submodule init
```

Обновить submodule'и. После ```git submodule init``` и когда хотите получить актуальные коммиты submodule'ей.
```
    git submodule update --recursive --remote
```

Для очистки баз данных. Т.к. мы не пишем скрипты для миграции баз данных, то понадобится при каждом изменении структуры БД. 
```
    docker volume rm rmp-backend_postgresql_data
    docker volume rm rmp-backend_keydb_data
```
