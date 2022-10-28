DOCKER_IMAGE=dockette/ci

_docker-build-%: VERSION=$*
_docker-build-%:
	docker build \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${VERSION}

build-php-5.6: _docker-build-php56
build-php-7.0: _docker-build-php70
build-php-7.1: _docker-build-php71
build-php-7.2: _docker-build-php72
build-php-7.3: _docker-build-php73
build-php-7.4: _docker-build-php74
build-php-8.0: _docker-build-php80
build-php-8.1: _docker-build-php81

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

build-ansitest: _docker-build-ansitest