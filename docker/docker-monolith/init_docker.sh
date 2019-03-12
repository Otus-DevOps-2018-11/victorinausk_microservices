#!/bin/bash
eval $(docker-machine env docker-host)
docker kill $(docker ps -q)
docker network create reddit
docker volume create reddit_db

echo 'BUILD'
docker build -t victorinausk/post:1.0 ../src/post-py
docker build -t victorinausk/comment:1.0 ../src/comment
docker build -t victorinausk/ui:1.0 ../src/ui

echo 'PULL'
docker push victorinausk/post:1.0
docker push victorinausk/comment:1.0
docker push victorinausk/ui:1.0

echo 'DB'
docker run -d --network=reddit \
--network-alias=post_db_1 \
--network-alias=comment_db_1 -v reddit_db:/data/db mongo:latest

echo 'POST'
docker run -d --network=reddit \
--network-alias=post_1 \
-e POST_DATABASE_HOST='post_db_1' \
-e POST_DATABASE='posts_1' \
victorinausk/post:1.0

echo 'Comment'
docker run -d --network=reddit \
--network-alias=comment_1 \
-e COMMENT_DATABASE_HOST='comment_db_1' \
-e COMMENT_DATABASE='comments_1' \
victorinausk/comment:1.0

echo 'UI'
docker run -d --network=reddit \
-p 9292:9292 \
-e POST_SERVICE_HOST='post_1' \
-e COMMENT_SERVICE_HOST='comment_1' \
victorinausk/ui:1.0
