# victorinausk_microservices
victorinausk microservices repository

HW 10
Выполнено ДЗ № 10

    [+ ] Основное ДЗ

В процессе сделано:

* Установлен Docker
* Запущен первый контейнер "Hello world!"
* Ознакомилась с командами (контейнеры + образы).
* Создалa образ из запущенного контейнера.

Задание со *:

Сравнила вывод двух команд
>docker inspect <u_container_id>
>docker inspect <u_image_id>

Контейнер в отличии от образа содержит:
- информацию о состоянии (state) контенера (запущен или нет, время запуска итд)
- ссылается на образ из которого он запущен
- содержит информацию о смонтированных дисках
- конфигурации хоста и лимиты
- содержит сетевые настройки контейнера

Образ содержит информацию:
- о своем предке
- информацию о слоях

HW 11
Выполнено ДЗ № 11

    [+ ] Основное ДЗ

В процессе сделано:

* создан новый проект в GCP (docker-)
* в новом проекте GCP создан хост с использованием docker-machine
* создан контенер reddit
* проверена его работоспособность
* контейнер загружен на DockerHub


Задание со *
 - Сделать потом терраформ и раскатку ansible скриптами
git status


HW 12
Выполнено ДЗ № 12

    [+ ] Основное ДЗ

В процессе сделано:

* созданы образы docker для приложения RedditApp
* конфигурации Docekrfile приведены в порядок в соотвествии с Best practices (Hadolint)
* приложение разворачивается на docker-machine в облаке GCP, при этом данные приложения, при остановке контейнеров сохраняются
* написан скрипт на терраформ и ансибл для подьема инфраструктуры папка docker-monolith/infra
* команды по подьему докер контейнеров заскриптованы init_docker.sh


В рамках задания со *\**:
- образа контейнеров запущены с другими сетевыми алиасами
- объем образа UI оптимизирован путем использования образа alpine


HW 13

videodriver caput
