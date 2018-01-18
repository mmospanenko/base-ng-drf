init:
	docker-compose build
	docker-compose run --rm client npm i

.PHONY: client
client:
	docker-compose run --rm --service-ports client sh

stop:
	find . -name \*.pyc -delete
	docker-compose stop
	docker stop $(shell docker ps -a -q)

serve:
	$(MAKE) stop
	docker-compose run --rm --service-ports client ng serve --host 0.0.0.0 --port 80

.PHONY: server
server:
	docker-compose run --rm --service-ports server sh
