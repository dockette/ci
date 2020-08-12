# CI (Continuous integration) 


:green_apple: :apple: :green_apple: Continuous integration Dockerfiles based on Alpine Linux for PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4 and Node.js 6, 7, 8, 9, 10, 11, 12, 13.

-----

[![Docker Stars](https://img.shields.io/docker/stars/dockette/ci.svg?style=flat)](https://hub.docker.com/r/dockette/ci/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/ci.svg?style=flat)](https://hub.docker.com/r/dockette/ci/)

## Discussion / Help

[![Join the chat](https://img.shields.io/gitter/room/dockette/dockette.svg?style=flat-square)](https://gitter.im/dockette/dockette?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Images

There are prepared images for PHP and Node.js.

### PHP

| PHP      | OS          | Tag    |
|----------|-------------|--------|
| PHP 7.4  | Alpine v3.9 | php74  |
| PHP 7.3  | Alpine v3.9 | php73  |
| PHP 7.2  | Alpine v3.8 | php72  |
| PHP 7.1  | Alpine v3.7 | php71  |
| PHP 7.0  | Alpine v3.5 | php70  |
| PHP 5.6  | Alpine v3.5 | php56  |

#### Extensions

These images have preinstalled couple of PHP extensions. Please take a look at Dockerfiles.

- [7.4](https://github.com/dockette/ci/blob/master/php/php74/Dockerfile)
- [7.3](https://github.com/dockette/ci/blob/master/php/php73/Dockerfile)
- [7.2](https://github.com/dockette/ci/blob/master/php/php72/Dockerfile)
- [7.1](https://github.com/dockette/ci/blob/master/php/php71/Dockerfile)
- [7.0](https://github.com/dockette/ci/blob/master/php/php70/Dockerfile)
- [5.6](https://github.com/dockette/ci/blob/master/php/php56/Dockerfile)

#### Extra 3rd party

All PHP images have a few preinstalled packages:

- bash
- curl
- git
- openssh
- ca-certificates

There is also preinstalled great package manager for PHP **Composer** with
fast plugin **prestissimo**.

![Composer](https://avatars3.githubusercontent.com/u/837015?v=3&s=200)

-----

#### CLI

```
docker run -it --rm -v $(pwd):/srv dockette/ci:php74
docker run -it --rm -v $(pwd):/srv dockette/ci:php73
docker run -it --rm -v $(pwd):/srv dockette/ci:php72
docker run -it --rm -v $(pwd):/srv dockette/ci:php71
docker run -it --rm -v $(pwd):/srv dockette/ci:php70
docker run -it --rm -v $(pwd):/srv dockette/ci:php56
```

### NodeJS

| NodeJS          | OS           | Tag           |
|-----------------|--------------|---------------|
| NodeJS 14       | Alpine v3.12 | node14        |
| NodeJS 13       | Alpine v3.11 | node13        |
| NodeJS 12       | Alpine v3.12 | node12        |
| NodeJS 11       | Alpine v3.9  | node11        |
| NodeJS 10       | Alpine v3.10 | node10        |
| NodeJS 9        | Alpine v3.8  | node9         |
| NodeJS 8        | Alpine v3.8  | node8         |
| NodeJS 7        | Alpine v3.6  | node7         |
| NodeJS 6        | Alpine v3.6  | node6         |

#### CLI

```
docker run -it --rm -v $(pwd):/srv dockette/ci:node14
docker run -it --rm -v $(pwd):/srv dockette/ci:node13
docker run -it --rm -v $(pwd):/srv dockette/ci:node12
docker run -it --rm -v $(pwd):/srv dockette/ci:node11
docker run -it --rm -v $(pwd):/srv dockette/ci:node10
docker run -it --rm -v $(pwd):/srv dockette/ci:node9
docker run -it --rm -v $(pwd):/srv dockette/ci:node8
docker run -it --rm -v $(pwd):/srv dockette/ci:node7
docker run -it --rm -v $(pwd):/srv dockette/ci:node6
```
