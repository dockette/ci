# Tester

[![Docker Stars](https://img.shields.io/docker/stars/dockette/ci.svg?style=flat)](https://hub.docker.com/r/dockette/ci/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/ci.svg?style=flat)](https://hub.docker.com/r/dockette/ci/)

## Images

| PHP        | OS     | Tag     |
|------------|--------|---------|
| PHP 7.1    | alpine | php71   |
| PHP 7.0    | alpine | php70   |
| PHP 5.6    | alpine | php56   |
| NodeJS 6.x | alpine | nodejs6 |
| NodeJS 7.x | alpine | nodejs7 |
| NodeJS 7.x | alpine | nodejs7-yarn |
| NodeJS 7.x | alpine | nodejs7-pnpm |

### PHP

| PHP      | OS     | Tag    |
|----------|--------|--------|
| PHP 7.1  | alpine | php71  |
| PHP 7.0  | alpine | php70  |
| PHP 5.6  | alpine | php56  |

#### Extensions

These images have preinstalled couple of PHP extensions. Please take a look at Dockerfiles for [5.6](https://github.com/dockette/ci/blob/master/php/php56/Dockerfile),
[7.0](https://github.com/dockette/ci/blob/master/php/php70/Dockerfile), [7.1](https://github.com/dockette/ci/blob/master/php/php71/Dockerfile).

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

#### PHP 7 (alpine)

[![Docker Stars](https://img.shields.io/docker/stars/dockette/ci-php71.svg?style=flat)](https://hub.docker.com/r/dockette/ci-php71/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/ci-php71.svg?style=flat)](https://hub.docker.com/r/dockette/ci-php71/)

```
docker run -it --rm -v $(pwd):/srv dockette/ci:php71
```

#### PHP 56 (alpine)

[![Docker Stars](https://img.shields.io/docker/stars/dockette/ci-php56.svg?style=flat)](https://hub.docker.com/r/dockette/ci-php56/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/ci-php56.svg?style=flat)](https://hub.docker.com/r/dockette/ci-php56/)

```
docker run -it --rm -v $(pwd):/srv dockette/ci:php56
```

## NodeJS

| NodeJS          | OS     | Tag           |
|-----------------|--------|---------------|
| NodeJS 6        | alpine | nodejs6       |
| NodeJS 7        | alpine | nodejs7       |
| NodeJS 7 + YARN | alpine | nodejs7-yarn  |
| NodeJS 7 + PNPM | alpine | nodejs7-pnpm  |

### NodeJS 7

```
docker run -it --rm -v $(pwd):/srv dockette/ci:nodejs7
```

### NodeJS 7 + YARN

```
docker run -it --rm -v $(pwd):/srv dockette/ci:nodejs7-yarn
```

### NodeJS 7 + PNPM

```
docker run -it --rm -v $(pwd):/srv dockette/ci:nodejs7-pnpm
```

### NodeJS 6

```
docker run -it --rm -v $(pwd):/srv dockette/ci:nodejs6
```
