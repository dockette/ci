build-node: build-node-12 build-node-11 build-node-10 build-node-9 build-node-8 build-node-7 build-node-6

build-node-12:
	docker build -t node12 ./nodejs/12

build-node-11:
	docker build -t node11 ./nodejs/11

build-node-10:
	docker build -t node10 ./nodejs/10

build-node-9:
	docker build -t node9 ./nodejs/9

build-node-8:
	docker build -t node8 ./nodejs/8

build-node-7:
	docker build -t node7 ./nodejs/7

build-node-6:
	docker build -t node6 ./nodejs/6

build-php: build-php-73 build-php-72 build-php-71 build-php-70 build-php-56

build-php-73:
	docker build -t php73 ./php/php73

build-php-72:
	docker build -t php72 ./php/php72

build-php-71:
	docker build -t php71 ./php/php71

build-php-70:
	docker build -t php70 ./php/php70

build-php-56:
	docker build -t php56 ./php/php56
