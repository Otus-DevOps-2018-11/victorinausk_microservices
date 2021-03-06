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


HW 23
Выполнено ДЗ № 23

- Открыты порты в файрволле
- Создан Docker хост в GCE и настроено локальное окружение на работу с ним
- Создала отдельный файл docker-compose-monitoring.yml для сервисов мониторинга
- Добавила cAdvisor для наблюдения за состоянием Docker container и host
- Добавила Grafana для визуализации данных из Prometheus
    *Импортировала dashboard DockerMonitoring
    *Настроила dashboard UI_Service_Monitoring
    *Настроила dashboard Business_Logic_Monitoring
- Добавила Alert на базе Alertmanager
- Запушила собранные образы на DockerHub
- Удалила VM


PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания


HW Logging-1
Выполнено ДЗ № 24

Основное задание:

- пересобраны образы приложений с тегом logging.
- не меняла в .env файле версии сервисов на logging.
- развернула EFK, в инструкции ошибка , нужно запускать дополнительно команду
            sudo sysctl -w vm.max_map_count=262144.
- настроила docker-compose на вывод логов stdout в fluentd для контейнеров post и ui.
- добавила фильтр с регулярным выражением для ui.
- заменила регулярное выражение на грок-шаблоны.


PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания


HW Kubernates-1
Выполнено ДЗ № 25

Основное задание:

- развернула kubernates по интсрукцииhardway
- создала файлы манифестов серывисов reddit



PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания

HW Kubernates-2
Выполнено ДЗ № 26

Основное задание:

    * Установила kubectl, установила и запустила minikube
    * Запустила ui в кластере
    * Описала и запустила comment-service.yml, post-service.yml и mongodb-service.yml
    * Удалила mongodb-service
    * Создала ui-service.yml с добавлением NodePort
    * Запустила minikube service ui
    * Создала и применила dev-namespace.yml
    * В GKE создала кластер с указанными параметрами
    * Создала dev namespace и задеплоила в нем приложение
    * Создала правило брандмауэра для ui
    * Приложила скриншот
    * Назначила роль service account-у dashboard-а с помощью clusterrolebinding

PR checklist

+Выставил label с темой домашнего задания

HW Kubernates-3
Выполнено ДЗ № 24

Основное задание:

    Отключила kube-dns (реплики изменены на 0)
    Вернула количество реплик kube-dns  в исходную
    Настроила Service UI на использование LoadBalancer
    Создала Ingress для сервиса UI
    Заставила работать Ingress Controller, как классический веб
    Защитила сервис с помощью TLS
    Настроила Ingress на прием только HTTPS траффика
    Зашла на адрес приложения по HTTPS
    Включила network-policy для GKE
    Обновила политику так, чтобы post-сервис дошел до базы данных
    Создала диск в GCP
    Создала описание PVC
    Добавила PVC в кластер
    Подключила PVC к Pod'ам
    Создала описание StorageClass

PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания

HW Kubernates-4
Выполнено ДЗ № 25

Основное задание:
- установла и настроила Helm + Tiller
- созданы Charts на основе манифестов kubernetes
- с использовнием helm развернут Gitlab-CI, для которого:
	- созданы группы и проекты
	- настроены пайплайны для сборки и деплоя приложения

 Отдельно :
  - для понимания ошибок со статусом Pending POD kubectl describe po gitlab-gitlab-6654b8f4c5-grrdx
  - для нормальной работы райплайна с helm заменить команду helm init --upgrade на helm init --force-upgrade
  - для исправления сборки докера с последней версией добавить в докерфайл 
    RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания

HW Kubernates-5
Выполнено ДЗ № 26

Основное задание:

- установила prometheus и настроила сбор метрик для k8s, метрики также отображаются для каждого микросервиса приложения (ui, post, comment)
- установлена grafana + настроены дэшборды для отображения статистики приложения. отображение графиков возможно для разных окружений
- установила и настроила EFK для сбора логов приложения

 Отдельно :
  при ошибках с установкой nginx использовать :

- helm install stable/nginx-ingress --name nginx --namespace  kube-system --set rbac.create=false --set rbac.createRole=false --set rbac.createClusterRole=false


PR checklist

+Выставил label с темой домашнего задания
+Выставил label с названием домашнего задания