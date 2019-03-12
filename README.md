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
Выполнено ДЗ № 13

В процессе сделано:

- Запущены контейнеры с разными встроенными драйверами (none, host, bridge)
- Созданы front_net и back_net сети
- Изучены автоматически созданные правила iptables.
- Установлен и параметризован основной конфиг для docker-compose.
- Параматезирован docker-compose.yml

PR checklist

Выставил label с темой домашнего задания
Выставил label с названием домашнего задания


HW Gitlab-1
Выполнено ДЗ № 14

В процессе сделано:

- развернула gitlab
- сконфигурированы ранеры
- реализованы первый пайплайн
- Создан docker-compose.yml для установки gitlab

PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания

Выполнено ДЗ № 19

В процессе сделано:

Подготовка окружения
                    ◦ Создала правило Prometheus и Puma:
                    ◦ Создала Docker хост в GCE и настроила локальное окружение
                    ◦ Создалаdocker хост
                    ◦ Подключилась к docker-machine
Запуск Prometheus
                    ◦ Запустила Prometheus внутри docker контейнера
                    ◦ Остановила Prometheus
Создание Docker образа
                    ◦ Создалаdocker файл monitoring/prometheus/Dockerfile
                    ◦ В monitoring/prometheus создала файл prometheus.yml
                    ◦ В prometheus собрала Docker образ

Образы микросервисов
                    ◦ Произвела сборку образов при помощи скриптов docker_build.sh
                    ◦ Определила в docker/docker-compose.yml новый сервис
Exporters
                    ◦ Добавила слежение за новым сервисом в Prometheus
                    ◦ Пересоздала для Prometheus
                    ◦ Перезапустила сервисы

        В списке появился ещё один сервис node

                    ◦ Получила информацию об использовании CPU
                    ◦ Запушила собранные образы на DockerHub:


PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания
