Create a machine called dev
docker-machine create --driver virtualbox dev

Start your machine
docker-machine start dev

Initialize the docker environment variables properly
eval "$(docker-machine env dev)"

Start magnolia-ask
make start env=dev

note:
It seems that a race condition prevents to start all the services at the same time. I recommend instead to use the ''startup.sh'' script.
