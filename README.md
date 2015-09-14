# Magnolia ASK

## Pre-requisites

## Installation
1. Install [Docker Toolbox](https://www.docker.com/toolbox) if you don't have docker on your local environment.
2. Clone the repo: ```git clone https://github.com/nicolasbarbe/magnolia-ask.git```
3. Create a local machine called dev: ```docker-machine create --driver virtualbox dev```.
4. Start your machine: ```docker-machine start dev```.
5. Initialize Docker environment variables: ```eval "$(docker-machine env dev)"```.

## Usage
Before starting Magnolia Ask, please make sure that your environment is started and correctly setup (see above). Magnolia Ask can be started either using docker-compose, the Makefile or the shell script provided in the distribution:
- either ```make start env=dev```
- or ```docker-compose up dev -f deploy/dev.yml up -d```
- or ```./start-env.sh dev```

**note: It seems that a race condition prevents starting all the services at the same time through the Makefile or docker-compose. I recommend instead to use the ''start-env.sh'' script that will start the services one by one.**
