<h1 align=center>Dockette / CI</h1>

<p align=center>
    :green_apple: :apple: :green_apple: Continuous integration Dockerfiles based on Alpine Linux
    for PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4, 8.0, 8.1, 8.2, 8.3, 8.4
    and Node.js 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
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
docker run -it --rm -v $(pwd):/srv dockette/ci:php84
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

| NodeJS               | OS           | Tag    | Node Version | npm Version | pnpm Version | Dockerfile                                                                 |
|----------------------|--------------|--------|--------------|-------------|--------------|----------------------------------------------------------------------------|
| NodeJS 24 (v22.16.0) | Alpine v3.22 | node24 | v22.16.0     | 11.4.2      | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node24/Dockerfile) |
| NodeJS 23 (v23.11.1) | Alpine v3.22 | node23 | v23.11.1     | 11.4.2      | 10.9.0       | [Dockerfile](https://github.com/dockette/ci/blob/master/node23/Dockerfile) |
| NodeJS 22 (v22.15.1) | Alpine v3.21 | node22 | v22.15.1     | 10.9.1      | 9.15.9       | [Dockerfile](https://github.com/dockette/ci/blob/master/node22/Dockerfile) |
| NodeJS 21 (v21.7.3)  | Alpine v3.19 | node21 | v21.7.3      | 10.9.1      | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node21/Dockerfile) |
| NodeJS 20 (v20.8.1)  | Alpine v3.18 | node20 | v20.8.1      | 9.6.6       | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node20/Dockerfile) |
| NodeJS 19 (v19.7.0)  | Alpine v3.17 | node19 | v19.7.0      | 9.1.2       | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile) |
| NodeJS 18 (v18.9.1)  | Alpine v3.16 | node18 | v18.9.1      | 8.10.0      | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node18/Dockerfile) |
| NodeJS 17 (v17.9.0)  | Alpine v3.16 | node17 | v17.9.0      | 8.1.3       | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node17/Dockerfile) |
| NodeJS 16 (v16.11.1) | Alpine v3.13 | node16 | v16.11.1     | 7.17.0      | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node16/Dockerfile) |
| NodeJS 15 (v15.10.0) | Alpine v3.12 | node15 | v15.10.0     | 6.14.17     | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node15/Dockerfile) |
| NodeJS 14            | Alpine v3.12 | node14 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node14/Dockerfile) |
| NodeJS 13            | Alpine v3.11 | node13 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node13/Dockerfile) |
| NodeJS 12            | Alpine v3.12 | node12 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node12/Dockerfile) |
| NodeJS 11            | Alpine v3.9  | node11 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node11/Dockerfile) |
| NodeJS 10            | Alpine v3.10 | node10 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node10/Dockerfile) |

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
docker run -it --rm -v $(pwd):/srv dockette/ci:node25
docker run -it --rm -v $(pwd):/srv dockette/ci:node24
docker run -it --rm -v $(pwd):/srv dockette/ci:node23
docker run -it --rm -v $(pwd):/srv dockette/ci:node22
docker run -it --rm -v $(pwd):/srv dockette/ci:node21
docker run -it --rm -v $(pwd):/srv dockette/ci:node20
docker run -it --rm -v $(pwd):/srv dockette/ci:node19
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
