#!/bin/bash
docker-compose up -d
docker login -u ar8888  -p dckr_pat_NqD6cUw-P2zyV9GQ715-Y8hLK_I

if [[ $GIT_BRANCH == "origin/dev" ]]; then

        docker tag test ar8888/dev
        docker push vennilavan/dev

if [[ $GIT_BRANCH == "origin/master" ]]; then

        docker tag test ar8888/prod
        docker push vennilavan/prod

else
        echo "failed"
