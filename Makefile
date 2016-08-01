.SILENT:
.PHONY:

ifndef ARGS
ARGS = $(filter-out $@,$(MAKECMDGOALS))
endif

%:
	@:

#
# Inherited
#

update:
	docker-compose down
	docker-compose pull
	docker-compose build
	docker run -it --rm -v $$(pwd):/usr/src/app -w /usr/src/app node npm update

up:
	docker-compose up -d

down:
	docker-compose down

#
# Tools
#
npm:
	docker run -it --rm -v $$(pwd):/usr/src/app -w /usr/src/app node npm $(ARGS)
