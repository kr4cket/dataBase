# Домашняя работа №5

## Задания:
- Оптимизируйте выборку данных из нескольких таблиц LMS с помощью JSON и индексов.
- Проведите профилирование запросов до и после оптимизации, чтобы измерить улучшение производительности.
- Проведите оптимизацию запросов с агрегацией и проанализируйте улучшения, полученные от применения индексов и WHERE для фильтрации данных.

## Решение:
Для выполнения домашних заданий по курсу БД была установлена СУБД PostgreSQL. Также для дальнейшего взаимодействия с базой данных было установлено приложение для взаимодействия с Базой данных - PGAdmin.

Установка и настройка PostgreSQL и PGAdmin происходит через Docker.

Для запуска системы необходимо ввести команду:

    docker-compose up -d

Выборка данных приведена в файле [diff_query.sql](scripts%2Fdiff_query.sql)

Создание индексов приведено в файле [indexes.sql](scripts%2Findexes.sql)

#### Примеры выполнения запросов с индексом и без

До индексирования колонок:

```postgresql
    duration: 2503.387 ms  execute <unnamed>: SELECT * FROM courses
    JOIN course_students cs on courses.course_id = cs.course_id
    JOIN public.users u on u.user_id = cs.student_id
    WHERE u.name LIKE 'ff%' and courses.completed is false and email LIKE 'c1%om'
    ORDER BY courses.course_name
```

После индексирования колонок:

```postgresql
    duration: 1421.014 ms  execute <unnamed>: SELECT * FROM courses
    JOIN course_students cs on courses.course_id = cs.course_id
    JOIN public.users u on u.user_id = cs.student_id
    WHERE u.name LIKE 'ff%' and courses.completed is false and email LIKE 'c1%om'
    ORDER BY courses.course_name
```

##### Итог
Получилось оптимизировать запрос

#### Профилирование агрегирующих запросов:

##### До оптимизации:
```postgresql
    duration: 1527.480 ms  execute <unnamed>: SELECT COUNT(u.*), MAX(user_id), MIN(user_id), course_name FROM courses
    JOIN course_students cs on courses.course_id = cs.course_id
    JOIN public.users u on u.user_id = cs.student_id
    WHERE u.name NOT LIKE 'f%' and courses.completed is false GROUP BY course_name 
```

##### После оптимизации: 
```postgresql
    duration: 1001.343 ms  execute <unnamed>: SELECT COUNT(u.*), MAX(user_id), MIN(user_id), course_name FROM courses
    JOIN course_students cs on courses.course_id = cs.course_id
    JOIN public.users u on u.user_id = cs.student_id
```

##### Итог
Запрос получилось ускорить