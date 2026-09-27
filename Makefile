DOCKER_IMAGE?=dockette/ci
DOCKER_PLATFORM?=linux/amd64
DOCKER_BUILD_OUTPUT?=--load
PHP_TEST_TAG?=php84
NODE_TEST_TAG?=node24
ANSIBLE_TEST_TAG?=ansitest

_docker-build-%: VERSION=$*
_docker-build-%:
	docker buildx \
		build \
		--platform ${DOCKER_PLATFORM} \
		--pull \
		${DOCKER_BUILD_OUTPUT} \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${VERSION}

build: build-php-8.4 build-node24 build-ansitest

test: build
	docker run --rm ${DOCKER_IMAGE}:${PHP_TEST_TAG} php -v
	docker run --rm ${DOCKER_IMAGE}:${PHP_TEST_TAG} composer --version
	docker run --rm ${DOCKER_IMAGE}:${NODE_TEST_TAG} node --version
	docker run --rm ${DOCKER_IMAGE}:${NODE_TEST_TAG} npm --version
	docker run --rm ${DOCKER_IMAGE}:${ANSIBLE_TEST_TAG} ansible --version

run:
	docker run -it --rm -v $$(pwd):/srv ${DOCKER_IMAGE}:${PHP_TEST_TAG}

build-php-5.6: _docker-build-php56
build-php-7.0: _docker-build-php70
build-php-7.1: _docker-build-php71
build-php-7.2: _docker-build-php72
build-php-7.3: _docker-build-php73
build-php-7.4: _docker-build-php74
build-php-8.0: _docker-build-php80
build-php-8.1: _docker-build-php81
build-php-8.2: _docker-build-php82
build-php-8.3: _docker-build-php83
build-php-8.4: _docker-build-php84
build-php-8.5: _docker-build-php85

build-node9: _docker-build-node9
build-node10: _docker-build-node10
build-node11: _docker-build-node11
build-node12: _docker-build-node12
build-node13: _docker-build-node13
build-node14: _docker-build-node14
build-node15: _docker-build-node15
build-node16: _docker-build-node16
build-node17: _docker-build-node17
build-node18: _docker-build-node18
build-node19: _docker-build-node19
build-node20: _docker-build-node20
build-node21: _docker-build-node21
build-node22: _docker-build-node22
build-node23: _docker-build-node23
build-node24: _docker-build-node24
build-node26: _docker-build-node26

build-ansitest: _docker-build-ansitest
