up:
	docker-compose up -d nginx php-fpm mysql
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
down:
	docker-compose down
restart:
	@make down
	@make up
ps:
	docker-compose ps


work:
	docker-compose run --rm workspace ash

mysqld:
	docker-compose exec mysql bash -c 'mysql -uroot -ppass'
