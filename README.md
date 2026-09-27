<h1 align=center>Dockette / CI</h1>

<p align=center>
    :green_apple: :apple: :green_apple: Continuous integration Dockerfiles based on Alpine Linux
    for PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4, 8.0, 8.1, 8.2, 8.3, 8.4, 8.5
    and Node.js 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
</p>

<p align=center>
   <a href="https://github.com/dockette/ci/actions"><img src="https://github.com/dockette/ci/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/ci"><img src="https://img.shields.io/docker/pulls/dockette/ci.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

-----

## Usage

### PHP

| PHP      | OS           | Tag    | Dockerfile                                                                 |
|----------|--------------|--------|----------------------------------------------------------------------------|
| PHP 8.5  | Alpine v3.24 | php85  | [Dockerfile](https://github.com/dockette/ci/blob/master/php85/Dockerfile)  |
| PHP 8.4  | Alpine v3.24 | php84  | [Dockerfile](https://github.com/dockette/ci/blob/master/php84/Dockerfile)  |
| PHP 8.3  | Alpine v3.24 | php83  | [Dockerfile](https://github.com/dockette/ci/blob/master/php83/Dockerfile)  |
| PHP 8.2  | Alpine v3.22 | php82  | [Dockerfile](https://github.com/dockette/ci/blob/master/php82/Dockerfile)  |
| PHP 8.1  | Alpine v3.19 | php81  | [Dockerfile](https://github.com/dockette/ci/blob/master/php81/Dockerfile)  |
| PHP 8.0  | Alpine v3.15 | php80  | [Dockerfile](https://github.com/dockette/ci/blob/master/php80/Dockerfile)  |
| PHP 7.4  | Alpine v3.14 | php74  | [Dockerfile](https://github.com/dockette/ci/blob/master/php74/Dockerfile)  |
| PHP 7.3  | Alpine v3.12 | php73  | [Dockerfile](https://github.com/dockette/ci/blob/master/php73/Dockerfile)  |
| PHP 7.2  | Alpine v3.9  | php72  | [Dockerfile](https://github.com/dockette/ci/blob/master/php72/Dockerfile)  |
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
docker run -it --rm -v $(pwd):/srv dockette/ci:php85
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
| NodeJS 26 (v26.5.1)  | Alpine v3.24 | node26 | v26.5.1      | 11.12.1     | 11.20.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node26/Dockerfile) |
| NodeJS 24 (v24.18.1) | Alpine v3.24 | node24 | v24.18.1     | 11.12.1     | 11.20.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node24/Dockerfile) |
| NodeJS 23 (v23.11.1) | Alpine v3.22 | node23 | v23.11.1     | 11.4.2      | 10.9.0       | [Dockerfile](https://github.com/dockette/ci/blob/master/node23/Dockerfile) |
| NodeJS 22 (v22.23.2) | Alpine v3.21 | node22 | v22.23.2     | 10.9.1      | 9.15.9       | [Dockerfile](https://github.com/dockette/ci/blob/master/node22/Dockerfile) |
| NodeJS 21 (v21.7.3)  | Alpine v3.20 | node21 | v21.7.3      | 10.9.1      | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node21/Dockerfile) |
| NodeJS 20 (v20.8.1)  | Alpine v3.18 | node20 | v20.8.1      | 9.6.6       | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node20/Dockerfile) |
| NodeJS 19 (v19.7.0)  | Alpine v3.17 | node19 | v19.7.0      | 9.1.2       | 10.22.0      | [Dockerfile](https://github.com/dockette/ci/blob/master/node19/Dockerfile) |
| NodeJS 18 (v18.9.1)  | Alpine v3.16 | node18 | v18.9.1      | 8.10.0      | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node18/Dockerfile) |
| NodeJS 17 (v17.9.0)  | Alpine v3.15 | node17 | v17.9.0      | 8.1.3       | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node17/Dockerfile) |
| NodeJS 16 (v16.11.1) | Alpine v3.14 | node16 | v16.11.1     | 7.17.0      | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node16/Dockerfile) |
| NodeJS 15 (v15.10.0) | Alpine v3.13 | node15 | v15.10.0     | 6.14.17     | N/A          | [Dockerfile](https://github.com/dockette/ci/blob/master/node15/Dockerfile) |
| NodeJS 14            | Alpine v3.12 | node14 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node14/Dockerfile) |
| NodeJS 13            | Alpine v3.11 | node13 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node13/Dockerfile) |
| NodeJS 12            | Alpine v3.12 | node12 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node12/Dockerfile) |
| NodeJS 11            | Alpine v3.9  | node11 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node11/Dockerfile) |
| NodeJS 10            | Alpine v3.10 | node10 | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node10/Dockerfile) |
| NodeJS 9             | Alpine v3.8  | node9  | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node9/Dockerfile)  |
| NodeJS 8             | Alpine v3.8  | node8  | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node8/Dockerfile)  |
| NodeJS 7             | Alpine v3.6  | node7  | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node7/Dockerfile)  |
| NodeJS 6             | Alpine v3.6  | node6  | -            | -           | -            | [Dockerfile](https://github.com/dockette/ci/blob/master/node6/Dockerfile)  |

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
docker run -it --rm -v $(pwd):/srv dockette/ci:node26
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
docker run -it --rm -v $(pwd):/srv dockette/ci:node9
docker run -it --rm -v $(pwd):/srv dockette/ci:node8
docker run -it --rm -v $(pwd):/srv dockette/ci:node7
docker run -it --rm -v $(pwd):/srv dockette/ci:node6
```

### Ansitest

| Tools                          | OS           | Tag           | Dockerfile                                                                 |
|--------------------------------|--------------|---------------|----------------------------------------------------------------------------|
| Ansible, Vagrant, Docker       | Debian 11    | ansitest      | [Dockerfile](https://github.com/dockette/ci/blob/master/ansitest/Dockerfile)  |

-----

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
