# Magnolia ASK
Magnolia ASK is a fake Question & Answer website that illustrates the usage of microservices with [Magnolia](http://magnolia-cms.com/) as a facade. The microservices are written in Go and are communicating to each other either through pub/sub (using [kafka](http://kafka.apache.org/)) or req/res (using HTTP).

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

To load some test data, run the following script : ```./test-data/load-test-1.sh```

You can now open the author instance at this address ```http://<dev_machine_ip>:3001/``` where ```dev_machine_ip``` is the IP of the dev docker-machine: ```docker-machine ip dev```

## Slides
<iframe src="//www.slideshare.net/slideshow/embed_code/key/xQrpB3sCUpuMx8" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/Magnolia_CMS/using-magnolia-in-a-microservices-architecture" title="Using Magnolia in a Microservices Architecture" target="_blank">Using Magnolia in a Microservices Architecture</a> </strong> from <strong><a href="//www.slideshare.net/Magnolia_CMS" target="_blank">Magnolia</a></strong> </div>

## Known issues

## Todos
