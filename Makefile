start: 
	docker-compose -p $(env) -f deploy/$(env).yml up -d $(service)

stop:
	docker-compose -p $(env) -f deploy/$(env).yml stop $(service) 

kill:
	docker-compose -p $(env) -f deploy/$(env).yml kill $(service)

rm: kill
	docker-compose -p $(env) -f deploy/$(env).yml rm -f $(service)

logs:
	docker-compose -p $(env) -f deploy/$(env).yml logs $(service)

restart: stop start
	
clean: kill
	docker ps -a -q | xargs docker rm
	docker images -q | xargs docker rmi 
