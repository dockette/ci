build-node: build-node-15 build-node-14 build-node-13 build-node-12 build-node-11 build-node-10 build-node-9 build-node-8 build-node-7 build-node-6

build-node-15:
	docker build -t node15 ./node15

build-node-14:
	docker build -t node14 ./node14

build-node-13:
	docker build -t node13 ./node13

build-node-12:
	docker build -t node12 ./node12

build-node-11:
	docker build -t node11 ./node11

build-node-10:
	docker build -t node10 ./node10

build-node-9:
	docker build -t node9 ./node9

build-node-8:
	docker build -t node8 ./node8

build-node-7:
	docker build -t node7 ./node7

build-node-6:
	docker build -t node6 ./node6

build-php: build-php-81 build-php-80 build-php-74 build-php-73 build-php-72 build-php-71 build-php-70 build-php-56

build-php-81:
	docker build -t php81 ./php81

build-php-80:
	docker build -t php80 ./php80

build-php-74:
	docker build -t php74 ./php74

build-php-73:
	docker build -t php73 ./php73

build-php-72:
	docker build -t php72 ./php72

build-php-71:
	docker build -t php71 ./php71

build-php-70:
	docker build -t php70 ./php70

build-php-56:
	docker build -t php56 ./php56
