#!/bin/bash

if [ -z "$1" ] ; then
    echo "No environment specified. Possible values are dev or prod"
    exit 1
fi

docker-machine inspect $1 > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Environement $1 does not exist."
    exit 1
fi

echo "Starting environment $1 ..."
eval "$(docker-machine env $1)"
echo "########################################################################"
make start env=$1 service=kafka
sleep 10s
echo "########################################################################"
make start env=$1 service=mongodb
sleep 10s
echo "########################################################################"
make start env=$1 service=users-commands
sleep 10s
echo "########################################################################"
make start env=$1 service=discussions-commands
sleep 10s
echo "########################################################################"
make start env=$1 service=answers-commands
sleep 10s
echo "########################################################################"
make start env=$1 service=users-queries
sleep 10s
echo "########################################################################"
make start env=$1 service=discussions-queries
sleep 10s
echo "########################################################################"
make start env=$1 service=answers-queries
sleep 10s
echo "########################################################################"
make start env=$1 service=author-frontend
echo "Environment $1 succesfuly started."
