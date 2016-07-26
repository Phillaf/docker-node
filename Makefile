.SILENT:
.PHONY:

%:
	@:

#
# Inherited
#

echo:
	@echo frontend $(ARGS)

update:
	docker-compose down
	git pull
	docker-compose pull
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

#
# Tools
#
