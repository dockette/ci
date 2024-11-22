<h1 align=center>Dockette / CI</h1>

<p align=center>
    :green_apple: :apple: :green_apple: Continuous integration Dockerfiles based on Alpine Linux 
    for PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4, 8.0, 8.1, 8.2, 8.3, 8.4
    and Node.js 10, 11, 12, 13, 14, 15, 16, 17, 18
</p>

<p align=center>
  <a href="https://hub.docker.com/r/dockette/ci/"><img src="https://badgen.net/docker/pulls/dockette/ci"></a>
  <a href="https://bit.ly/ctteg"><img src="https://badgen.net/badge/support/gitter/cyan"></a>
  <a href="https://github.com/sponsors/f3l1x"><img src="https://badgen.net/badge/sponsor/donations/F96854"></a>
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

-----

## Usage

### PHP

| PHP      | OS           | Tag    | Dockerfile                                                                 |
|----------|--------------|--------|----------------------------------------------------------------------------|
| PHP 8.4  | Alpine v3.22 | php84  | [Dockerfile](https://github.com/dockette/ci/blob/master/php84/Dockerfile)  |
| PHP 8.3  | Alpine v3.19 | php83  | [Dockerfile](https://github.com/dockette/ci/blob/master/php83/Dockerfile)  |
| PHP 8.2  | Alpine v3.17 | php82  | [Dockerfile](https://github.com/dockette/ci/blob/master/php82/Dockerfile)  |
| PHP 8.1  | Alpine v3.16 | php81  | [Dockerfile](https://github.com/dockette/ci/blob/master/php81/Dockerfile)  |
| PHP 8.0  | Alpine v3.12 | php80  | [Dockerfile](https://github.com/dockette/ci/blob/master/php80/Dockerfile)  |
| PHP 7.4  | Alpine v3.10 | php74  | [Dockerfile](https://github.com/dockette/ci/blob/master/php74/Dockerfile)  |
| PHP 7.3  | Alpine v3.9  | php73  | [Dockerfile](https://github.com/dockette/ci/blob/master/php73/Dockerfile)  |
| PHP 7.2  | Alpine v3.8  | php72  | [Dockerfile](https://github.com/dockette/ci/blob/master/php72/Dockerfile)  |
| PHP 7.1  | Alpine v3.7  | php71  | [Dockerfile](https://github.com/dockette/ci/blob/master/php71/Dockerfile)  |
| PHP 7.0  | Alpine v3.5  | php70  | [Dockerfile](https://github.com/dockette/ci/blob/master/php70/Dockerfile)  |
| PHP 5.6  | Alpine v3.5  | php56  | [Dockerfile](https://github.com/dockette/ci/blob/master/php56/Dockerfile)  |

All PHP images have a few preinstalled packages:

- bash
- git 
- ca-certificates 
- wget 
- curl 
- openssh 
- make
- composer

**Terminal**

```
docker run -it --rm -v $(pwd):/srv dockette/ci:php83
docker run -it --rm -v $(pwd):/srv dockette/ci:php82
docker run -it --rm -v $(pwd):/srv dockette/ci:php81
docker run -it --rm -v $(pwd):/srv dockette/ci:php80
docker run -it --rm -v $(pwd):/srv dockette/ci:php74
docker run -it --rm -v $(pwd):/srv dockette/ci:php73
docker run -it --rm -v $(pwd):/srv dockette/ci:php72
docker run -it --rm -v $(pwd):/srv dockette/ci:php71
docker run -it --rm -v $(pwd):/srv dockette/ci:php70
docker run -it --rm -v $(pwd):/srv dockette/ci:php56
```

### NodeJS

| NodeJS          | OS           | Tag    | PM    | Dockerfile                                                                 |
|-----------------|--------------|--------|--------|----------------------------------------------------------------------------|
| NodeJS 22       | Alpine v3.20 | node22 | npm, pnpm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile)  |
| NodeJS 21       | Alpine v3.19 | node21 | npm, pnpm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile)  |
| NodeJS 20       | Alpine v3.18 | node20 | npm, pnpm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile)  |
| NodeJS 19       | Alpine v3.17 | node19 | npm, pnpm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile)  |
| NodeJS 18       | Alpine v3.16 | node18 | npm, pnpm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node18/Dockerfile)  |
| NodeJS 17       | Alpine v3.16 | node17 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node17/Dockerfile)  |
| NodeJS 16       | Alpine v3.13 | node16 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node16/Dockerfile)  |
| NodeJS 15       | Alpine v3.12 | node15 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node15/Dockerfile)  |
| NodeJS 14       | Alpine v3.12 | node14 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node14/Dockerfile)  |
| NodeJS 13       | Alpine v3.11 | node13 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node13/Dockerfile)  |
| NodeJS 12       | Alpine v3.12 | node12 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node12/Dockerfile)  |
| NodeJS 11       | Alpine v3.9  | node11 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node11/Dockerfile)  |
| NodeJS 10       | Alpine v3.10 | node10 | npm   | [Dockerfile](https://github.com/dockette/ci/blob/master/node10/Dockerfile)  |

All Nodejs images have a few preinstalled packages:

- bash 
- git 
- ca-certificates 
- openssh
- curl
- tzdata 
- make
- direnv
- npm
- pnpm (node18+)

**Terminal**

```
docker run -it --rm -v $(pwd):/srv dockette/ci:node18
docker run -it --rm -v $(pwd):/srv dockette/ci:node17
docker run -it --rm -v $(pwd):/srv dockette/ci:node16
docker run -it --rm -v $(pwd):/srv dockette/ci:node15
docker run -it --rm -v $(pwd):/srv dockette/ci:node14
docker run -it --rm -v $(pwd):/srv dockette/ci:node13
docker run -it --rm -v $(pwd):/srv dockette/ci:node12
docker run -it --rm -v $(pwd):/srv dockette/ci:node11
docker run -it --rm -v $(pwd):/srv dockette/ci:node10
```

### Ansitest

| Tools                          | OS           | Tag           | Dockerfile                                                                 |
|--------------------------------|--------------|---------------|----------------------------------------------------------------------------|
| Ansible, Vagrant, Docker       | Debian 11    | ansitest      | [Dockerfile](https://github.com/dockette/ci/blob/master/ansitest/Dockerfile)  |


-----

Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Also thank you for using this package.
